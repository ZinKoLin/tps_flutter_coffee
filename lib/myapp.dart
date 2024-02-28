import 'package:flutter/material.dart';
import 'package:flutter_tbs_1/home.dart';
import 'package:flutter_tbs_1/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //top level wiget
      debugShowCheckedModeBanner: false,
      home: Splash()
    );
  }
}
