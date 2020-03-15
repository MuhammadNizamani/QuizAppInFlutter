import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,//here we are giving width to container
      margin: EdgeInsets.all(20),
        child: Text(
      questionText,
      style: TextStyle(fontSize: 22),
      textAlign: TextAlign.center,
      
    ));
  }
}
