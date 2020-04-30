
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapptutor/pages/home.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Login"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
          },
          child: Text("Login"),
        ),
      ),
    );
  }
}