import 'package:flutter/material.dart';
import 'package:flutter_tbs_1/home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    Future.delayed(Duration(seconds: 5), () { //အချိန်သတ်မှတ်
      gotoHome(context);
    });

    return Scaffold(
      body: Container(
          child: Image.asset(
        "assets/coffee.jpg",
        fit: BoxFit.cover,
        width: width,
        height: height,
      )),
    );
  }
}

gotoHome(context) {
  var route = MaterialPageRoute(builder: (context) { 
    return Home();
  });


  Navigator.pushReplacement(context, route);
}
