import 'package:flutter/material.dart';
import 'package:flutter_tbs_1/wigets/productswidget.dart';

class OrderWidget extends StatefulWidget {
  const OrderWidget({super.key});

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    //this build method will called repeated, when execute setState
    print("Building statefull UI");
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex: 2, child: Product()),
          Expanded(
            flex: 1,
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
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      count++;
                      setState(() {}); //reload build
                    },
                    icon: Icon(
                      Icons.add_box,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (count > 1) {
                          count--;
                        }
                      });
                    },
                    icon: Icon(
                      Icons.remove_circle,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(flex: 2, child: Container()),
        ],
      ),
    );

    //call setState when Ui need to reflect
  }
}
