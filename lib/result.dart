import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);
  String get resultPharse {
    String resultText;
    if (resultScore < 8) {
      resultText = "Your greate and Innocent";
    } else if (resultScore < 12) {
      resultText = "Yeah you are likable";
    } else if (resultScore > 16) {
      resultText = "you are ... Strange!";
    } else {
      resultText = "you are bad person !";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
            child: Text(
          resultPharse,
          style: TextStyle( 
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent),
          textAlign: TextAlign.center,
        )),
        FlatButton(
          child: Text('Reset Quiz!'),
          onPressed: resetQuiz,
          textColor: Colors.blueAccent,
        )
      ],
    );
  }
}
