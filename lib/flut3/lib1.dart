import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
void main(){
  runApp(MyApp());
}
//this is a widget
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: PhotoView(imageProvider: AssetImage("images/photo_2019-03-15_22-39-23.jpg")),
      ),
    );
  }
}
