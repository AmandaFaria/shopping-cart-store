import 'package:mobx/mobx.dart';

part 'shopping_cart_store.g.dart';

class ShoppingCartStore = _ShoppingCartStore with _$ShoppingCartStore;

abstract class _ShoppingCartStore with Store {
  @observable
  int quantity = 1;

  @observable
  bool isCartEmpty = false;

  @observable
  bool showSuccessMessage = false;

  @action
  void incrementQuantity() {
    quantity++;
  }

  @action
  void decrementQuantity() {
    if (quantity > 1) {
      quantity--;
    }
  }

  @action
  void removeProduct() {
    isCartEmpty = true;
  }

  @action
  void finalizePurchase() {
    showSuccessMessage = true;
    Future.delayed(Duration(days: 1), () {
      showSuccessMessage = false;
    });
  }
}
