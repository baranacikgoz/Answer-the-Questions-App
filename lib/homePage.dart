import 'package:flutter/material.dart';
import 'askWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("My Second App"))),
      body: Container(
        child: Center(child: AskWidget()),
      ),
    );
  }
}
