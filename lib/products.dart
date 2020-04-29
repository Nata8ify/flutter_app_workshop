import 'package:flutter/material.dart';
import 'package:flutterapptutor/pages/product.dart';

class Product extends StatelessWidget {

  final List<String> products;

  const Product({this.products = const []});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductList, itemCount: products.length,);
  }

  Widget _buildProductList(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset("assests/food.jpg"),
          Text(products[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(child: Text("Details"), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>  ProductDetail() ));
              },)
            ],
          )
        ],
      ),
    );
  }

}