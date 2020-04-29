import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Unimplemented"),
            RaisedButton(
              child: Text("Back"),
              onPressed: () { Navigator.pop(context); },
            )
          ],
        ),
      ),
    );
  }
}
