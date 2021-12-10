import 'package:first_app/question.dart';
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var questions = [
    "What is your favorite color",
    "what is your favorite animal",
    "what is your favorite cartoon",
    "what is your favorite video game",
  ];

  void onPressedA() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print("Button was pressed!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("First App"),
          ),
          body: Column(
            children: [
              Question(questions[questionIndex]),
              RaisedButton(child: Text("option 1"), onPressed: onPressedA),
              RaisedButton(child: Text("option 2"), onPressed: onPressedA),
              RaisedButton(child: Text("option 3"), onPressed: onPressedA)
            ],
          )),
    );
  }
}
