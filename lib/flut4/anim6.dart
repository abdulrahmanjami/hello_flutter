import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(MyApp());
}

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Animate(
              effects: [
                FadeEffect(
                    delay: Duration(seconds: 1),
                    begin: 0.3,
                    end: 1.0,
                    duration: Duration(seconds: 5)),
              ],
              child: Container(
                width: 150,
                height: 150,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 10,),
            Animate(
              effects: [
                MoveEffect(
                  delay: 5.seconds,
                  begin: Offset(0, 0),
                  end: Offset(200, 0),
                )
              ],
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ),
            ),
            Text("This text is animated").animate(effects: [MoveEffect(duration: 4.seconds)]),
            ElevatedButton(onPressed: (){}, child: Text("Ok")).animate().shimmer(duration: 4.seconds),
            SizedBox(height: 10,),
            Animate(
              effects: [
                MoveEffect(
                  begin: Offset(0, 0),
                  end: Offset(200, 0),
                )
              ],
              child: Container(
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
              onComplete: (con){
                con.repeat(reverse: true );
              },
            ),
          ],
        ),
      ),
    );
  }
}



