import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function neededFunction;
  final  String answerText;

  Answer(this.neededFunction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          color: Colors.blue,
          child: Text(answerText), 
          onPressed: neededFunction),
    );
  }
}
