// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ShoppingCartStore on _ShoppingCartStore, Store {
  late final _$quantityAtom =
      Atom(name: '_ShoppingCartStore.quantity', context: context);

  @override
  int get quantity {
    _$quantityAtom.reportRead();
    return super.quantity;
  }

  @override
  set quantity(int value) {
    _$quantityAtom.reportWrite(value, super.quantity, () {
      super.quantity = value;
    });
  }

  late final _$isCartEmptyAtom =
      Atom(name: '_ShoppingCartStore.isCartEmpty', context: context);

  @override
  bool get isCartEmpty {
    _$isCartEmptyAtom.reportRead();
    return super.isCartEmpty;
  }

  @override
  set isCartEmpty(bool value) {
    _$isCartEmptyAtom.reportWrite(value, super.isCartEmpty, () {
      super.isCartEmpty = value;
    });
  }

  late final _$showSuccessMessageAtom =
      Atom(name: '_ShoppingCartStore.showSuccessMessage', context: context);

  @override
  bool get showSuccessMessage {
    _$showSuccessMessageAtom.reportRead();
    return super.showSuccessMessage;
  }

  @override
  set showSuccessMessage(bool value) {
    _$showSuccessMessageAtom.reportWrite(value, super.showSuccessMessage, () {
      super.showSuccessMessage = value;
    });
  }

  late final _$_ShoppingCartStoreActionController =
      ActionController(name: '_ShoppingCartStore', context: context);

  @override
  void incrementQuantity() {
    final _$actionInfo = _$_ShoppingCartStoreActionController.startAction(
        name: '_ShoppingCartStore.incrementQuantity');
    try {
      return super.incrementQuantity();
    } finally {
      _$_ShoppingCartStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementQuantity() {
    final _$actionInfo = _$_ShoppingCartStoreActionController.startAction(
        name: '_ShoppingCartStore.decrementQuantity');
    try {
      return super.decrementQuantity();
    } finally {
      _$_ShoppingCartStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeProduct() {
    final _$actionInfo = _$_ShoppingCartStoreActionController.startAction(
        name: '_ShoppingCartStore.removeProduct');
    try {
      return super.removeProduct();
    } finally {
      _$_ShoppingCartStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void finalizePurchase() {
    final _$actionInfo = _$_ShoppingCartStoreActionController.startAction(
        name: '_ShoppingCartStore.finalizePurchase');
    try {
      return super.finalizePurchase();
    } finally {
      _$_ShoppingCartStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
quantity: ${quantity},
isCartEmpty: ${isCartEmpty},
showSuccessMessage: ${showSuccessMessage}
    ''';
  }
}
