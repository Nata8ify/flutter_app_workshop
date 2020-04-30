import 'package:flutter/material.dart';
import 'package:flutterapptutor/pages/product_create.dart';
import 'package:flutterapptutor/pages/product_list.dart';

class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
          appBar : AppBar(
            title: Text("Please Select"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: "Create Product",
                  icon: Icon(Icons.create),
                ),
                Tab(
                  text: "Manage Products",
                  icon: Icon(Icons.list),
                )
              ],
            ),
          ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(title: Text("Please Select")),
              ListTile(
                title: Text("All Products"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProductAdminPage();
                  }));
                },
              )
            ],
          ),
        ),

        body: TabBarView(
          children: <Widget>[
            ProductCreatePage(),
            ProductListPage()
          ],
        ),
      ),
      length: 2,
    );
  }
}
