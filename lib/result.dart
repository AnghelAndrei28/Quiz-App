import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Results(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    return resultScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          'Congratulations',
          style: TextStyle(fontSize: 20, color: Colors.green),
        ),
        SizedBox(
          height: 20,
        ),
        Text('Score:' + resultPhrase),
        SizedBox(
          height: 20,
        ),
        FlatButton(
          onPressed: resetQuiz,
          child: Icon(Icons.refresh),
        ),
      ],
    ));
  }
}
