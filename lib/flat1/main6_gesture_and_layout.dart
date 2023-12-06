import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(child: Container(child: Wrap(
        children: [
          Text("Hello Flutter"),
          ElevatedButton(onPressed: (){}, child: Text("ok")),
        ],
      ))),
      appBar: AppBar(title: Text("Hello App"),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print("clicked");
      }, child: Text("add"),),
    ),
  ));
}