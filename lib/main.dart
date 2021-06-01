import 'package:flutter/material.dart';
import './question.dart';

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
    var questions = [
      'what is your fav color',
      'what is your fav animal',
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Question(questions[questionIndex]),
          RaisedButton(child: Text('Answer 1') ,onPressed: answerQuestion),
          RaisedButton(child: Text('Answer 2') ,onPressed: () => print('ans 2 chosen')),
          RaisedButton(child: Text('Answer 3') ,onPressed: () {
            print('Ans 3 chosen');
          }),
          

        ],
        ),
    ),
    );
  }
}
