import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(child: Text("Hello Flutter")),
      appBar: AppBar(title: Text("Hello App"),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print("clicked");
      }, child: Text("add"),),
    ),
  ));
}