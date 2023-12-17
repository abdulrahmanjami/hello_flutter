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
  var myContainer1 = Container(
    key: Key("1"),
    width: 200,
    height: 200,
    color: Colors.red,
  );
  var myContainer2 = Container(
    key: Key("2"),
    width: 200,
    height: 200,
    color: Colors.blue,
  );
  var selection = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: Duration(seconds: 2),
                child: selection == 1 ? myContainer1 : myContainer2,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if(selection == 1){
                        selection = 2;
                      }else{
                        selection = 1;
                      }
                    });
                  },
                  child: Text("Switch Containers"))
            ],
          ),
        ),
      ),
    );
  }
}
