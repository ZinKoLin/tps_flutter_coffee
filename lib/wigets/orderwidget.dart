
import 'package:flutter/material.dart';
import 'package:flutter_tbs_1/wigets/productswidget.dart';

import '../models/cart.dart';
import '../models/product.dart';

class OrderWidget extends StatefulWidget {
  const OrderWidget({super.key});

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  var count = 1;
  List<Product> products = [
    Product(1, "Iced Coffee", 2500),
    Product(2, "Cappuccino", 3500),
    Product(3, "Black Coffee", 1500),
    Product(4, "Mocha", 4000),
    Product(5, "Tea", 2000),
  ];
  Product? _product;
  Cart cart = Cart();
  @override
  Widget build(BuildContext context) {
    //This build method will called repeated, when execute setState
    print("Building statefull UI....");
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
            flex: 2,
            child: ProductWidget(products, (selectedProduct) {
              _product = selectedProduct;
              count = cart.getPurchaseQty(selectedProduct);
              setState(() {});
            })),
        Expanded(
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/coffee-cup.png"),
                Text(
                  "X $count",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: _product != null
                      ? () {
                          setState(() {
                            if (count > 1) {
                              cart.addItem(
                                  _product!); //TODO: create remove items
                              count = cart.getPurchaseQty(_product!);
                              setState(() {});
                            }
                          });
                        }
                      : null,
                  icon: Icon(
                    Icons.remove_circle,
                    color: Colors.white,
                    size: 40,
                  )),
              IconButton(
                  onPressed: _product != null
                      ? () {
                          cart.addItem(_product!);
                          count = cart.getPurchaseQty(_product!);
                          setState(() {});
                        }
                      : null,
                  icon: Icon(
                    Icons.add_circle,
                    color: Colors.white,
                    size: 40,
                  )),
            ],
          ),
        ),
        Expanded(flex: 2, child: Container()),
      ]),
    );

    //call setState when UI need to reflect
    //setState(() {

    //});
  }
}
