class Product {
  int _id = 0; //nullable
  int get id => _id;

  String _name = "";
  String get name => _name;

  double _price = 0.0;
  double get price => _price;

  int _purchasedQty = 0;
  int get purchasedQty => _purchasedQty;

  double get purchaseAmount => _price * _purchasedQty; //computed properties

  Product(this._id, this._name, this._price);

  add() {
    _purchasedQty += 1;
  }
}