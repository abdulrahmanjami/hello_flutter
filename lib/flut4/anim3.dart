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
  var t = 10.0, l = 10.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey,
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                // Positioned(child: Text("2323"), top: t, left: l,),
                AnimatedPositioned(
                  curve: Curves.bounceOut,
                  duration: Duration(milliseconds: 500),
                  child: Container(width: 100, height: 100, color: Colors.lightGreenAccent,), top: t, left: l,),
                Container(width: 300, height: 400, color: Colors.red,),
                Container(width: 400, height: 300, color: Colors.blue,),
                Container(width: 200, height: 200, color: Colors.purple,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(onPressed: (){
                      setState(() {
                        t -= 50;
                      });
                    }, child: Icon(Icons.arrow_upward_rounded),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(onPressed: (){
                          setState(() {
                            l -= 50;
                          });
                        }, child: Icon(Icons.keyboard_double_arrow_left_rounded),),
                        MaterialButton(onPressed: (){
                          setState(() {
                            l += 50;
                          });
                        }, child: Icon(Icons.keyboard_double_arrow_right_rounded),)
                      ],
                    ),
                    MaterialButton(onPressed: (){
                      setState(() {
                        t += 50;
                      });
                    }, child: Icon(Icons.arrow_downward_rounded),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
