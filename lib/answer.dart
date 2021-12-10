import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final VoidCallback selectHandeler;
  final String answerText;
  Answer(this.selectHandeler, this.answerText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(answerText),
        onPressed: selectHandeler,
      ),
    );
  }
}
