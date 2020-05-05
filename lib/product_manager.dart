
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapptutor/product_control.dart';
import 'package:flutterapptutor/products.dart';

class ProductManager extends StatelessWidget {

  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductManager(this.products, this.addProduct, this.deleteProduct);


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

    Widget _buildProductList() {
      Widget product;
      if (products.length > 0) {
        product = Product(products, deleteProduct);
      } else {
        product = Center(child: Text("No Product Available"));
      }
      return product;
    }

  }
