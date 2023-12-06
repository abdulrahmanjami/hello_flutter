import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          MyNewWidget(),
          MyNewWidget(),
          MyNewWidget(),
          MySpecialText(),
          MySpecialText(),
          MySpecialText(),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: null),
    ),
  ));
}


//stateless widget
class MyNewWidget extends StatelessWidget {
  const MyNewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('my new widget',);
  }
}

class MySpecialText extends StatelessWidget {
  const MySpecialText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("My W", style: TextStyle(color: Colors.purple, fontSize: 66),);
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(70.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login Form', style: TextStyle(fontSize: 35.0, color: Colors.blue),),
            TextField(decoration: InputDecoration(hintText: 'Username'),),
            TextField(decoration: InputDecoration(hintText: 'Password'),),
            ElevatedButton(onPressed: (){}, child: Text('Login')),
            MyNewWidget(),
            Text('foo'),
            MySpecialText(),
            MySFText(),
          ],
        ),
      ),
    );
  }
}

//statefull widget
class MySFText extends StatefulWidget {
  const MySFText({super.key});

  @override
  State<MySFText> createState() => _MySFTextState();
}

class _MySFTextState extends State<MySFText> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder(fallbackHeight: 100,);
  }
}



