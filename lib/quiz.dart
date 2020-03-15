import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function questionAnswer;
  final int index;
  Quiz(
      {@required this.question,
      @required this.questionAnswer,
      @required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[index][
                'questionText'] //_index is for list and questionText is for app these will define the which question be shown
            ),
        // Answer(_questionAnswer),//here we are passing private function in costorcter of answer class
        //Answer(_questionAnswer),//it will be recvie by final Function selectHandler in answer.dart file
        ...(question[index]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>questionAnswer(answer['score']), answer['text']); // here we cannot pass function with parameter  but we know that  
        }).toList() // in above line we are assinging questionAnswer function to annonimous fuction in dart leftside function or varible take pointer or addressof function or varible 
      ],
    );
  }
}
