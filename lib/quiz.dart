import "package:flutter/material.dart";

import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final VoidCallback onPressedA;
  const Quiz(this.questions, this.questionIndex, this.onPressedA, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answer'] as List).map((answer) {
          return Answer(onPressedA, answer);
        })
      ],
    );
  }
}
