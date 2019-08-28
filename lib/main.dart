import 'package:flutter/material.dart';

//Menu
import 'menu.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: '2 Dimentions',
      theme: ThemeData.light(),
      home: Menu(),
    );
  }
}