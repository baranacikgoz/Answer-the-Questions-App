import 'package:flutter/material.dart';
import 'quiz.dart';
import 'results.dart';

class AskWidget extends StatefulWidget {
  @override
  _AskWidgetState createState() => _AskWidgetState();
}

class _AskWidgetState extends State<AskWidget> {
  int _questNum = 0;
  final _questions = const [
    {
      "question": "What's your favourite color ? ",
      "answers": ["Black", "Red", "Green", "White"],
    },
    {
      "question": "What's your favourite animal ? ",
      "answers": ["Cat", "Dog", "Bird", "Monkey"],
    },
    {
      "question": "What's your favourite brand ? ",
      "answers": ["Apple", "Msi", "Asus", "Monster"],
    },
  ];
  void _answerQuestion() {
    print("Answer Chosen!");

    setState(() {
      _questNum++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: (_questNum < _questions.length)
          ? Quiz(answerQuestion: _answerQuestion, questions: _questions, questNum: _questNum,)
          : Results(),
    );
  }
}
