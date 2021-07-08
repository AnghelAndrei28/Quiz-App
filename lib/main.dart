import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'What\'s your favourite colour?',
        'answers': [
          {'text': 'Black', 'score': 1},
          {'text': 'Red', 'score': 2},
          {'text': 'Green', 'score': 3}
        ]
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': [
          {'text': 'Dog', 'score': 1},
          {'text': 'Tiger', 'score': 2},
          {'text': 'Lion', 'score': 3},
          {'text': 'Elephant', 'score': 4}
        ]
      },
      {
        'questionText': 'What\'s your favourite fruit?',
        'answers': [
          {'text': 'Pear', 'score': 1},
          {'text': 'Orange', 'score': 2},
          {'text': 'Apple', 'score': 3}
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(_questions, _answerQuestion, _questionIndex)
            : Results(_totalScore, _resetQuiz),
      ),
    );
  }
}
