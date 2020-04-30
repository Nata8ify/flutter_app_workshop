
import 'package:flutter/material.dart';
import 'package:flutterapptutor/pages/product_admin.dart';
import '../product_manager.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(title: Text("Please Choose...")),
            ListTile(
              title: Text("Manage Products"),
              onTap: (){
                Navigator.pushReplacementNamed(context, "/admin");
              },
            )
          ],
        )
      ),
      appBar: AppBar(
        title:Text("EasyList"),
      ),
      body: ProductManager(),
    );
  }
}