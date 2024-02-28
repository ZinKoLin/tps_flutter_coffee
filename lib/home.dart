import 'package:flutter/material.dart';
import 'package:flutter_tbs_1/wigets/orderwidget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "coffee shop",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                child: createSaleCounter(),
              ),
            ),
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.brown,
                  child: OrderWidget(),
                )),
          ],
        ),
      ),
    );
  }
}

Widget createSaleCounter() {
  return Container(
    //color: Colors.green,
    child: Row(
      children: [
        Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/coffee-machine.png"),
            )),
        Expanded(flex: 2, child: Container()),
        Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/coffee-cup.png"),
            )),
        Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/coffee-jar.png"),
            )),
      ],
    ),
  );
}


  