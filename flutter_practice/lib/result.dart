import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;

  Result(this.resultScore, this.reset);

  String get resultPhrase{
    var resultText= 'you did it!';

    if (resultScore == 5){
      resultText = 'lawful Good!';
    }else if (resultScore <= 6){
      resultText = 'Neutral Good!';
    }else if(resultScore <= 8){
      resultText = 'Chaotic Good!';
    }else if(resultScore <= 10){
      resultText = 'Lawful Neutral!';
    }else if(resultScore <= 12){
      resultText = 'True Neutral!';
    }else if(resultScore <= 14){
      resultText = 'Chaotic Neutral!';
    }else if(resultScore <= 16){
      resultText = 'Lawful Evil!';
    }else if(resultScore <= 18){
      resultText = 'Neutral Evil!';
    }else if(resultScore <= 20){
      resultText = 'Chaotic Evil!';
    }
    print(resultScore);
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('You answered all the questions!',
            style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text('Your Alignment is: '+ resultPhrase,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          FlatButton(
            child: Text('<= Retake Test =>'
            ),
          textColor: Colors.red,
          onPressed: reset,)
        ],
      ),
    );
  }
}
