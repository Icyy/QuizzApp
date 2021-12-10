import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
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
    {
      "questionText": "What is your favorite color",
      "answer": [
        "blue",
        "red",
        "green",
        "white",
      ],
    },
    {
      "questionText": "what is your favorite animal",
      "answer": [
        "cat",
        "dog",
        "cow",
        "hen",
      ],
    },
    {
      "questionText": "what is your favorite cartoon",
      "answer": [
        "spiderman",
        "DBZ",
        "naruto",
        "tnmt",
      ],
    },
    {
      "questionText": "what is your favorite video game",
      "answer": ["farcry", "AC", "batman", "Middle earth"],
    },
  ];

  void onPressedA() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: questionIndex < questions.length
          ? Quiz(questions, questionIndex, onPressedA)
          : Result(),
    ));
  }
}
