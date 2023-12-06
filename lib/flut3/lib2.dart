import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

//this is a StatefulWidget
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Alert(context: context, title: "This is my Title", desc: "Flutter is awesome.").show();
            }, child: Text("one")),
            ElevatedButton(onPressed: (){
              Alert(
                context: context,
                type: AlertType.success,
                title: "RFLUTTER ALERT",
                desc: "Flutter is more awesome with RFlutter Alert.",
                buttons: [
                  DialogButton(
                    child: Text(
                      "COOL",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    width: 120,
                  )
                ],
              ).show();
            }, child: Text("two")),
            ElevatedButton(onPressed: (){
              Alert(
                context: context,
                type: AlertType.warning,
                title: "RFLUTTER ALERT",
                desc: "Flutter is more awesome with RFlutter Alert.",
                buttons: [
                  DialogButton(
                    child: Text(
                      "FLAT",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    color: Color.fromRGBO(0, 179, 134, 1.0),
                  ),
                  DialogButton(
                    child: Text(
                      "GRADIENT",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(116, 116, 191, 1.0),
                      Color.fromRGBO(52, 138, 199, 1.0)
                    ]),
                  )
                ],
              ).show();
            }, child: Text("three")),
          ],
        ),
      ),
    );
  }
}
