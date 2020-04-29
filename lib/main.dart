import 'package:flutter/material.dart';
import 'package:flutterapptutor/product_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber
      ),
      home: Scaffold(
        appBar: AppBar(
          title:Text("EasyList"),
        ),
        body: ProductManager(),
      ),
    );
  }
}
