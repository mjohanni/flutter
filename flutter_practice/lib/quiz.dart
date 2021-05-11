import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int questionIndex;
  final Function answerToQuestion;

  Quiz({
    @required this.answerToQuestion,
    @required this.questions,
    @required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Question Time!',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
            .map((answer) {
          return Answer(() => answerToQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
