import 'package:flutter/material.dart';
import 'package:flutterapptutor/pages/auth.dart';
import 'package:flutterapptutor/pages/home.dart';
import 'package:flutterapptutor/pages/product_admin.dart';
import 'package:flutterapptutor/product_manager.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapptutor/products.dart';

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
      routes: {
        '/' : (context) => AuthPage(),
        '/admin' : (context) => ProductAdminPage(),
      },
      onGenerateRoute: (RouteSettings setting){
        final List<String> pathElements = setting.name.split("/");
        if(pathElements[0] == "") {
          return null;
        }
        /*switch(pathElements[0]){
          case 'product' : {
            int index = int.parse(pathElements[1]);
            return MaterialPageRoute(
              builder: (context) => ProductManager(index),
            );
          }
          default : {
            return null;
          }
        }*/
      },
    );
  }
}
