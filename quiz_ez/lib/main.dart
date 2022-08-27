// ignore_for_file: prefer_const_constructors, sort_child_properties_last, duplicate_ignore

import 'package:flutter/material.dart';


import 'package:quiz_ez/widgets/quiz.dart';
import 'package:quiz_ez/widgets/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionNumber = 1;
  int _total_score = 0;

  void _resetQuiz() {
    setState(() {
      _questionNumber = 1;
      _total_score = 0;
    });
  }

  void homePressed() {
    setState(() {
      _questionNumber = 0;
    });
    print("Home pressed, RESTARTTTT !!!");
  }

  void _answerChosen(int score) {
    _total_score += score;
    setState(() {
      if (_questionNumber < 5) {
        _questionNumber++;
        print(score);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        "questionText": "Is this Kenneth?",
        "answers": [
          {"text": "Yes", "score": 100},
          {"text": "No", "score": 0}
        ],
      },
      {
        "questionText": "What is a 2 x 5?",
        "answers": [
          {"text": "10", "score": 10},
          {"text": "25", "score": 0},
          {"text": "3", "score": 0},
          {"text": "7", "score": 0}
        ],
      },
      {
        "questionText": "What is a 2 + 5?",
        "answers": [
          {"text": "10", "score": 0},
          {"text": "25", "score": 0},
          {"text": "3", "score": 0},
          {"text": "7", "score": 10}
        ]
      },
      {
        "questionText": "What is a 12 x 5?",
        "answers": [
          {"text": "62", "score": 0},
          {"text": "60", "score": 10},
          {"text": "30", "score": 0},
          {"text": "30", "score": 0}
        ],
      },
      {
        "questionText": "What is a 2 + 15?",
        "answers": [
          {"text": "215", "score": 0},
          {"text": "35", "score": 0},
          {"text": "13", "score": 0},
          {"text": "17", "score": 10}
        ],
      },
      {
        "questionText": "What is a 36 x 2?",
        "answers": [
          {"text": "100", "score": 0},
          {"text": "362", "score": 0},
          {"text": "37", "score": 0},
          {"text": "72", "score": 10}
        ],
      },
    ];
    print(_questions[_questionNumber]["score"]);

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                textStyle: TextStyle(fontSize: 20),
              ),
              child: Text("Home"),
              onPressed: homePressed,
            ),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          body: (_questionNumber < 5)
              ? Quiz(
                  answerChosen: _answerChosen,
                  questions: _questions,
                  questionNumber: _questionNumber,
                )
              : Result(_total_score, _resetQuiz)),
    );
  }
}
