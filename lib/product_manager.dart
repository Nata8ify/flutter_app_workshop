
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapptutor/product_control.dart';
import 'package:flutterapptutor/products.dart';

class ProductManager extends StatefulWidget {

  @override
  State createState() {
    return _ProductManagerState();
  }


}

  class _ProductManagerState extends State<ProductManager> {

    final List<String> _products = [];

    @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: ProductControl(addProduct: addProduct,),
          ),
           Expanded(child : _buildProductList(),)
      ],
      );
    }

    void addProduct(String product) {
        setState(() {
          _products.add(product);
        });
    }

    Widget _buildProductList() {
      Widget product;
      if (_products.length > 0) {
        product = Product(products: _products,);
      } else {
        product = Center(child: Text("No Product Available"));
      }
      return product;
    }

  }
