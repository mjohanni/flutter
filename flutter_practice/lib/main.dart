import 'package:flutter/material.dart';
import 'package:flutter_practice/result.dart';
import './quiz.dart';
import './result.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'choose a specific element',
      'answers': [
        {'text':'Fire','score': 3},
        {'text':'Light','score':1},
        {'text':'Wind','score':2},
        {'text':'Shadow','score':4},
        {'text':'Earth','score':2},
        {'text':'Water','score':2}
      ]
    },
    {
      'questionText': 'What\'s your spirit animal?',
      'answers': [
        {'text':'Eagle','score':2},
        {'text':'Serpent','score':4},
        {'text':'Horse','score':3},
        {'text':'Rabbit','score':1}
      ]
    },
    {
      'questionText': 'Select your birth season?',
      'answers': [
        {'text':'Summer','score':2},
        {'text':'Autumn','score':3},
        {'text':'Winter','score':4},
        {'text':'Spring','score':1}
      ]
    },
    {
      'questionText': 'Choose your favorite Hero class?',
      'answers': [
        {'text':'knight','score':2},
        {'text':'Mage','score':3},
        {'text':'Rogue','score':4},
        {'text':'Healer','score':1},
        {'text':'Druid','score':2},
      ]
    },
    {
      'questionText': 'If guilty, would you confess to a crime?',
      'answers': [
        {'text':'Yes, because it is my duty to do so.','score':1},
        {'text':'No, and I\'d try to "prove" my own innocence.','score':4},
        {'text':' No, I\'d make the magistrates prove my guilt.','score':3},
        {'text':'Yes, because it might get me a lighter sentence.','score':2}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void reset(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerToQuestions(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print('there\'s more questions');
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage("assets/images/unnamed.jpg"),
            fit: BoxFit.cover,
          )
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown,
            title: Center(child: Text(
                'D&D - Find out your alignment!',
              style: TextStyle(fontSize: 18,
              fontWeight: FontWeight.bold),
              ),
            ),
          ),
          body: Container(
            margin: EdgeInsets.all(100),
            child: _questionIndex < _questions.length
              ? Quiz(
              answerToQuestion: _answerToQuestions,
              questionIndex: _questionIndex,
              questions: _questions)
              : Result(_totalScore, ()=> reset()),
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
