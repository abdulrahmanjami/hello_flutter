import 'package:flutter/material.dart';
main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHome2(),
  ));
}
class MyHome2 extends StatefulWidget {
  const MyHome2({super.key});
  @override
  State<MyHome2> createState() => _MyHome2State();
}
class _MyHome2State extends State<MyHome2> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
          child: Text(
            "$counter",
            style: TextStyle(color: Colors.purple, fontSize: 44),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter++;
            print("test $counter");
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}




class MyHome extends StatelessWidget {

  MyHome({super.key});

  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
          child: Text(
            "$counter",
            style: TextStyle(color: Colors.purple, fontSize: 44),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter++;
          print("test $counter");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}



