import 'package:flutter/material.dart';
import 'package:flutterapptutor/pages/auth.dart';
import 'package:flutterapptutor/pages/home.dart';
import 'package:flutterapptutor/pages/product.dart';
import 'package:flutterapptutor/pages/product_admin.dart';
import 'package:flutterapptutor/product_manager.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapptutor/products.dart';
import 'package:flutterapptutor/self/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {

  final List<Map<String, String>> products = [];

  void addProduct(Map<String, String> product) {
    setState(() {
      products.add(product);
    });
  }

  void deleteProduct(int index){
    setState(() {
      products.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber
      ),
      routes: {
        '/' : (context) => Home(),
        '/admin' : (context) => ProductAdminPage(),
      },
      onGenerateRoute: (RouteSettings setting){
        final List<String> pathElements = setting.name.split("/");
        pathElements.forEach((element) {
          print('element = $element');
        });
        if(pathElements.isEmpty || pathElements[1] == "") {
          return null;
        }
        switch(pathElements[1]){
          case 'product' : {
            print('Path Element to Product Detail');
            int index = int.parse(pathElements[2]);
            return MaterialPageRoute(
              builder: (context) => ProductDetailPage(products[index]['title'], products[index]['image']),
            );
          }
          default : {
            return null;
          }
        }
      },
    );
  }
}
