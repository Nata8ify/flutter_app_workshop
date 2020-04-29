import 'package:flutter/material.dart';

class Product extends StatelessWidget {

  final List<String> products;

  const Product({this.products = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products.map((e) => Card(
        child: Column(
          children: <Widget>[
            Image.asset("assests/food.jpg"),
            Text(e)
          ],
        ),
      )).toList(),
    );
  }

}