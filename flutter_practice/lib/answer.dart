import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function questionAsked;
  final String answerText;

  Answer(this.questionAsked, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ButtonTheme(
        minWidth: 200.0,
        height: 75.0,
        child: RaisedButton(
            padding: EdgeInsets.all(10),
            color: Colors.brown,
            textColor: Colors.white,
            child: Text(answerText,
            style: TextStyle(
              fontSize: 16
            ),),
            onPressed: questionAsked,
        ),
      ),
    );
  }
}
