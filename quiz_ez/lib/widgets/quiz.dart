import 'package:flutter/material.dart';

import '../answer.dart';
import '../questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final Function answerChosen;
  final int questionNumber;

  const Quiz(
      {required this.questions,
      required this.answerChosen,
      required this.questionNumber});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[questionNumber]['questionText'] as String,
        ),
        ...(questions[questionNumber]['answers'] as List<Map<String, dynamic>>)
            .map(
          (answer) {
            return Answer(
              () => answerChosen(answer['score']),
              answer['text'] as String,
            );
          },
        ).toList(),
      ],
    );
  }
}
