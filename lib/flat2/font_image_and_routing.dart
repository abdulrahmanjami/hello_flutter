import 'package:flutter/material.dart';
import 'package:hello_flutter/flat1/main.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

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
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Text without font family "),
              Text(
                "Text with font family",
                style: TextStyle(fontFamily: "myFont1", fontSize: 30),
              ),
              Text(
                "Text with font family",
                style: TextStyle(fontFamily: "myFont2", fontSize: 30),
              ),
              Text(
                "Text with font family",
                style: TextStyle(fontFamily: "myFont3", fontSize: 30),
              ),
              Image(
                image: NetworkImage(
                    "https://cdn.dribbble.com/users/4009983/screenshots/16047199/media/5ebee3eea85f65f654414699c4a75f00.jpg"),
                width: 100,
                height: 100,
              ),
              Image(
                image: NetworkImage(
                    "https://cdn.dribbble.com/users/4009983/screenshots/19999799/media/702c6f8b611cb44d3b8f6db7e74bf4c1.png"),
                width: 300,
                height: 100,
              ),
              Image.network(
                  width: 100,
                  height: 100,
                  "https://cdn.dribbble.com/users/4009983/screenshots/16047199/media/5ebee3eea85f65f654414699c4a75f00.jpg"),
              Image.asset(
                "images/ephemeral-vs-app-state.png",
                width: 100,
                height: 100,
              ),
              Image.asset(
                "images/IP address classes.webp",
                width: 100,
                height: 100,
              ),
              Image.asset(
                "images/photo_2019-03-15_22-39-23.jpg",
                width: 100,
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (bc) {
                      return MyHomePage(title: "hey");
                    }));

                  },
                  child: Text("Go to Another Page"))
            ],
          ),
        ),
      ),
    );
  }
}

class MySecondPage extends StatelessWidget {
  const MySecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
