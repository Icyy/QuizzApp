import "package:flutter/material.dart";


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  void onPressedA(){
    print("Button was pressed!");
  }
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(home : Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: Column(children: [
        Text("What is your quesiton"),
        RaisedButton(child:Text("option 1"),onPressed: onPressedA),
        RaisedButton(child:Text("option 2"),onPressed: onPressedA),
        RaisedButton(child:Text("option 3"),onPressed: onPressedA)
      ],)
    ),
    );
  }
}