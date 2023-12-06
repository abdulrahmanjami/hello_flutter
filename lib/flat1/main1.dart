import 'package:flutter/material.dart';

main(){
  Text text = new Text("In the name of Allah");
  Center center = new Center(child: text,);
  Text myTitle = new Text("Hello World App");
  AppBar appBar = new AppBar(title: myTitle,);
  Scaffold scaffold = new Scaffold(body: center, appBar: appBar,);
  MaterialApp materialApp = new MaterialApp(home: scaffold,);
  runApp(materialApp);
}