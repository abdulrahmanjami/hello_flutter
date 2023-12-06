import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var isVisible = true;
  var myIcon = const Icon(Icons.remove_red_eye);
  var un = '';
  var ps = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login", style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),),
              TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                ),
                onChanged: (s){
                  un = s;
                },
              ),
              TextField(
                obscureText: isVisible,
                decoration: InputDecoration(
                    hintText: "Password",
                  suffixIcon: IconButton(onPressed: (){

                      setState(() {
                        if(isVisible){
                          isVisible = false;
                          myIcon = Icon(Icons.remove_red_eye_outlined);
                        }else{
                          isVisible = true;
                          myIcon = Icon(Icons.remove_red_eye);
                        }
                      });

                  }, icon: myIcon)
                ),
                onChanged: (s){
                  ps = s;
                },
              ),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                print("username = $un and password = $ps");
                if(un == "admin" && ps == "0000"){
                  print("You have logged in successfully :)");
                }else{
                  print("You can not log in :(");
                }
              }, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
