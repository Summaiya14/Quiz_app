import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }
  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'what is your fav color?',
        'answers': ['blue', 'red', 'black'],
      },
      {
        'questionText': 'what is your fav dish?',
        'answers': ['pizza', 'pasta', 'burger'],
      },
      {
        'questionText': 'what is your name?',
        'answers': ['sums', 'affan', 'faiza'],
      },
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Question(questions[questionIndex]['questionText']),
          ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
            return Answer(answerQuestion, answer);
          }).toList()
        ],
        ),
    ),
    );
  }
}
