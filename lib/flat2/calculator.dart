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

  int? selectedValue = 1;
  var tec1 = TextEditingController();
  var tec2 = TextEditingController();
  num result = 0;
  var error = '';
  var number = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Text("Calculator", style: TextStyle(fontSize: 45, color: Colors.blue),),
              TextField(
                keyboardType: TextInputType.number,
                controller: tec1,
                decoration: InputDecoration(
                  hintText: "First Number"
                ),
              ),
              TextField(
                controller: tec2,
                decoration: InputDecoration(
                  hintText: "Second Number"
                ),
              ),
              RadioListTile(
                title: Text('Addition'),
                value: 1,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              ),
              RadioListTile(
                title: Text('Subtraction'),
                value: 2,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              ),
              RadioListTile(
                title: Text('Multiplication'),
                value: 3,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              ),
              RadioListTile(
                title: Text('Division'),
                value: 4,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              ),
              ElevatedButton(onPressed: (){
                setState(() {

                  // if(tec1.text == ""){
                  //   error = "Enter your first number ";
                  //   return;
                  // }
                  //
                  // if(tec2.text == ""){
                  //   error = "Enter your Second number";
                  //   return;
                  // }

                  int ifn = int.parse(tec1.text);
                  int isn = int.parse(tec2.text);

                  if(selectedValue == 1){
                    result = ifn + isn;
                  }else if(selectedValue == 2){
                    result = ifn - isn;
                  }
                  else if(selectedValue == 3){
                    result = ifn * isn;
                  }
                  else{
                    result = ifn / isn;
                  }


                  tec1.text = "";
                  tec2.text = "";
                  // error = '';

                });
              }, child: Text("Calculate")),
              SizedBox(height: 20,),
              Text("Result = $result", style: TextStyle(fontSize: 30),),
              Text(error, style: TextStyle(color: Colors.red),),
            ],
          ),
        ),
      ),
    );
  }
}
