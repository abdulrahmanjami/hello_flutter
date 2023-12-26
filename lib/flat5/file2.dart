import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController tec = TextEditingController();
  var data = "my context";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: tec,
            ),
            ElevatedButton(onPressed: () async {
              final directory = await getApplicationDocumentsDirectory();
              print(directory.path);
              File myFile = File('${directory.path}/myData.txt');
              print(myFile.path);
              await myFile.writeAsString(tec.text);

            }, child: Text("Save to File")),
            ElevatedButton(onPressed: () async {
              final directory = await getApplicationDocumentsDirectory();
              File myFile = File('${directory.path}/myData.txt');
              data = await myFile.readAsString();

              setState(() {});

            }, child: Text("Restore from File")),
            Text(data)
          ],
        ),
      ),
    );
  }
}
