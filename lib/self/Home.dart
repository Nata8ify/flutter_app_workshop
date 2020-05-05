import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterapptutor/generated/json/version_generate_entity_helper.dart';
import 'package:flutterapptutor/self/model/version_generate_entity.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {

  @override
  State createState() {
    return HomeState();
  }

}


class HomeState extends State<Home> {

  Future<VersionGenerateEntity> futureVersionState;
  Widget version = Text("...");


  @override
  void initState() {
    super.initState();
    futureVersionState = fetchVersion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Self-tutorial Home"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: <Widget>[
              version,
              FlatButton(
                color: Theme.of(context).primaryColor,
                onPressed: (){
                  setState(() {
                  version = FutureBuilder<VersionGenerateEntity>(future: futureVersionState, builder: (context, snapshot){
                    if (snapshot.hasData) {
                      return Text("${snapshot.data.name} ${snapshot.data.version}");
                    } else if (snapshot.hasError) {
                      return Text("Error... ${snapshot.error.toString()}");
                    }
                    return CircularProgressIndicator();
                  },);
                  });
                },
                child: Text("View Version"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<VersionGenerateEntity> fetchVersion() async {
    final response = await http.get("https://cashstream.herokuapp.com/version");
    if (response.statusCode == 200) {
      return versionGenerateEntityFromJson(VersionGenerateEntity(), json.decode(response.body));
    } else {
      throw Exception("Load Failed");
    }
  }

}