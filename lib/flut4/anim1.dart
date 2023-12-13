import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  double w = 100, h = 100;
  var col = Colors.red;
  var btnText = "Change color";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              color: col,
              width: w,
              height: h,
              curve: Curves.bounceInOut,
              onEnd: (){
                setState(() {
                  btnText = "Change color";
                });
              },
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              setState(() {
                w = w + 20;
                h = h + 20;
              });
            }, child: Text("Change W & H")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              setState(() {
               col = Colors.blue;
               btnText = "Changing color...";
              });
            }, child: Text(btnText)),
          ],
        ),
      ),
    );
  }
}
