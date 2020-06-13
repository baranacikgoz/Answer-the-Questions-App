import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questNum;
  final Function answerQuestion;
  

  Quiz({@required this.questions, 
        @required this.answerQuestion, 
        @required this.questNum});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [Question(questions[questNum]["question"]),
       ...(questions[questNum]["answers"] as List<String>).map((item) {
            return Answer(answerQuestion, item);
          }).toList() ],
      );
  }
}