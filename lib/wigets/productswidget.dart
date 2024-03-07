import 'package:flutter/material.dart';
import 'package:flutter_tbs_1/const.dart';
import 'package:flutter_tbs_1/models/product.dart';

class ProductWidget extends StatefulWidget {
  final List<Product> products;
  final Function onSelect;
  const ProductWidget(this.products, this.onSelect, {super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  Product? selectedProduct;

  @override
  Widget build(BuildContext context) {
    var widgets = widget.products.map(
      (e) {
        return GestureDetector(
          onTap: () {
            selectedProduct = e;
            widget.onSelect(selectedProduct);
            setState(() {});
          },
          child: Card(
            margin: EdgeInsets.all(8.0),
            color: selectedProduct == e ? Colors.red : Colors.amber,
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                e.name,
                style: productTextStyle,
              ),
            ),
          ),
        );
      },
    ).toList();

    return Container(
      padding: EdgeInsets.all(8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: widgets),
      ),
    );
  }
}
