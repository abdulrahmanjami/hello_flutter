import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{

  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedIcon(icon: AnimatedIcons.play_pause, progress: controller, size: 70, color: Colors.lightGreenAccent,),
              ElevatedButton(onPressed: (){
                controller.forward();
              }, child: Text("Forward Animation")),
              ElevatedButton(onPressed: (){
                controller.reverse();
              }, child: Text("Reverse Animation")),
              ElevatedButton(onPressed: (){
                controller.repeat(reverse: true);
              }, child: Text("Animations")),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
