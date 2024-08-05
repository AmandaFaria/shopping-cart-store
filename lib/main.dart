import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'shopping_cart_store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoppingCart(),
    );
  }
}

class ShoppingCart extends StatelessWidget {
  final ShoppingCartStore _store = ShoppingCartStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrinho de Compras'),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Observer(
                builder: (_) {
                  if (_store.showSuccessMessage) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          'Compra finalizada com sucesso!',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
              Expanded(
                child: Observer(
                  builder: (_) {
                    if (_store.isCartEmpty) {
                      return Center(
                        child: Text('Carrinho vazio'),
                      );
                    } else {
                      return ListView(
                        children: [
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Image.network(
                                'https://images.tcdn.com.br/img/img_prod/680926/jaqueta_baw_pullover_full_print_smiley_rosa_pink_19598_1_0107575f54bf5c5095fbd97556fade7c.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text('Jaqueta Pullover Rosa'),
                            subtitle: Text('R\$ 199,99'),
                            trailing: Column(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.remove),
                                      onPressed: _store.decrementQuantity,
                                    ),
                                    Observer(
                                      builder: (_) => Text('${_store.quantity}'),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: _store.incrementQuantity,
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.delete),
                                      color: Colors.red,
                                      onPressed: _store.removeProduct,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 16.0,
            left: 16.0,
            right: 16.0,
            child: Observer(
              builder: (_) => ElevatedButton(
                onPressed: _store.isCartEmpty ? null : _store.finalizePurchase,
                child: Text('Finalizar Compra'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, 
                  backgroundColor: _store.isCartEmpty
                      ? Colors.grey
                      : Color.fromRGBO(40, 43, 46, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
