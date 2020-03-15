import 'package:flutter/material.dart';
import 'package:winter_work/result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _totalScore= 0;
  var _question = [
    {
      //we  are  make map here inside the list
      'questionText': 'What\' your favorit color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'white', 'score': 1}
      ], //we are make list inside the map which is already in side the list
    },
    {
      'questionText': 'What\' your favorit animal?',
      'answers': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Cow', 'score': 3},
        {'text': 'Cat', 'score': 1},
        {'text': 'Loin', 'score': 10}
      ],
    },
    {
      'questionText': 'What\' your favorit Sport?',
      'answers': [
        {'text': 'Football', 'score': 5},
        {'text': 'Cricket', 'score': 10},
        {'text': 'Baskitball', 'score': 3},
        {'text': 'Vallyball', 'score': 1}
      ],
    },
    {
      'questionText': 'What\' your favorit programming language?',
      'answers': [
        {'text': 'C/C++', 'score': 10},
        {'text': 'Java', 'score': 5},
        {'text': 'Python', 'score': 3},
        {'text': 'Dart', 'score': 1}
      ],
    },
  ];
  void _reset()
  {
    setState(() {
       _index = 0;
   _totalScore= 0;
    });
   
    
  }
  void _questionAnswer(int score)//here we  going to pass score to calculte the score
   {
    // with the help of _ we make this function private
    _totalScore += score;
    setState(() {
      //here we are telling flutter that we are going to change the widgit
      _index = _index + 1;
    });

    //print(_question[_index]);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Quiz App"),
        ),
        body: _index < _question.length
            ? Quiz(
                questionAnswer: _questionAnswer,
                question: _question,
                index: _index,
              )
            : Result(_totalScore,_reset ),
      ),
    );
  }
}
