
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

    List<String> _products = ['Food Tester'];

    @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: ProductControl(addProduct: addProduct,),
          ),
          Product(products: _products,)
        ],
      );
    }

    void addProduct(String product) {
        setState(() {
          _products.add(product);
        });
    }

  }
