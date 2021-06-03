import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resultHandler;
  Result(this.resultScore, this.resultHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'you are so bad';
    } else if (resultScore <= 12) {
      resultText = "strange";
    } else if (resultScore <= 16) {
      resultText = 'good';
    } else {
      resultText = 'You are awesome';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [
        Text(resultPhrase, style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
        FlatButton(onPressed: resultHandler, child: Text('Restart Quiz!'), textColor: Colors.blue,),
      ],
    ),
       );
  }
}