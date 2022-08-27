import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final score;
  final VoidCallback buttonHandler;

  Result(this.score, this.buttonHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          "Well done! Your score was $score",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: buttonHandler,
          child: Text(
            "Restart Quiz",
            textAlign: TextAlign.center,
          ),
        ),
      ]),
    );
  }
}
