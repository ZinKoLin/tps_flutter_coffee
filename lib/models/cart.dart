
import 'product.dart';

class Cart {
  List<Product> _items = [];
  List<Product> get items => _items;

  int get totalKinds => _items.length;

  int getTotalQty() {
    var totalQty = 0;
    for (var i = 0; i < items.length; i++) {
      totalQty += items[i].purchasedQty;
    }
    return totalQty;
  }

  int getPurchaseQty(Product p1) {
    for (var i = 0; i < items.length; i++) {
      if (items[i].id == p1.id) {
        return items[i].purchasedQty;
      }
    }
    return 0;
  }

  double getTotalAmount() {
    double totalAmount = 0;
    for (var i = 0; i < items.length; i++) {
      totalAmount += items[i].purchaseAmount;
    }
    return totalAmount;
  }

  bool isInCart(Product p1) {
    var found = false;
    _items.forEach((element) {
      if (element.id == p1.id) {
        found = true;
      }
    });
    return found;
  }

  addItem(Product p1) {
    // Product? existingItem = _items.firstWhere((element) => element.id == p1.id, orElse: () => null);
    if (isInCart(p1)) {
      var existingItem = _items.firstWhere((element) => element.id == p1.id);
      existingItem.add();
    } else {
      p1.add(); //create purchase qty -> 1
      _items.add(p1);
    }
  }
}
