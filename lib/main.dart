import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  final questions = const [
    {
      'questionText': 'what is your fav color?',
      'answers': [
        {'text': 'blue', 'score': 5},
        {'text': 'red', 'score': 10},
        {'text': 'black', 'score': 15}
      ],
    },
    {
      'questionText': 'what is your fav dish?',
      'answers': [
        {'text': 'pizza', 'score': 1},
        {'text': 'pasta', 'score': 20},
        {'text': 'burger', 'score': 25}
      ],
    },
    {
      'questionText': 'what is your name?',
      'answers': [
        {'text': 'sums', 'score': 2},
        {'text': 'affan', 'score': 4},
        {'text': 'faiza', 'score': 16}
      ],
    },
  ];

  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore = totalScore + score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questions: questions,
                questionIndex: questionIndex,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
