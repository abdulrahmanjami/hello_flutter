import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login Form', style: TextStyle(fontSize: 35.0, color: Colors.blue),),
              TextField(decoration: InputDecoration(hintText: 'Username'),),
              TextField(decoration: InputDecoration(hintText: 'Password'),),
              ElevatedButton(onPressed: (){}, child: Text('Login'))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: null),
    ),
  ));
}