import 'package:flutter/material.dart';

class JavaQuestion extends StatefulWidget {
  const JavaQuestion({Key? key}) : super(key: key);

  @override
  _JavaQuestionState createState() => _JavaQuestionState();
}

class _JavaQuestionState extends State<JavaQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Java Question"),
      ),
    );
  }
}
