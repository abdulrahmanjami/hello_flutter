import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var imageURL = "images/photo_2019-03-15_22-39-23.jpg";
  var op = 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            AnimatedOpacity(
              opacity: op,
              duration: Duration(seconds: 2),
                child: Image.asset(imageURL, width: 400, height: 300,)
            ),
            MaterialButton(onPressed: (){
              setState(() {
                // imageURL = "images/IP address classes.webp";
                op += 0.1;
              });
            }, child: Text("Show Picture"),)
          ],
        ),
      ),
    );
  }
}
