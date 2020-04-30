
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

    final List<Map<String, String>> _products = [];

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

    void addProduct(Map<String, String> product) {
        setState(() {
          _products.add(product);
        });
    }

    void deleteProduct(int index){
      setState(() {
        _products.removeAt(index);
      });
    }

    Widget _buildProductList() {
      Widget product;
      if (_products.length > 0) {
        product = Product(_products, deleteProduct);
      } else {
        product = Center(child: Text("No Product Available"));
      }
      return product;
    }

  }
