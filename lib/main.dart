import 'package:design_one/scree_two.dart';
import 'package:design_one/screen_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: //ScreenOne()
          ScreenTwo(),
    );
  }
}
