import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback callback;
  final String buttonText;

  Answer(this.callback, this.buttonText);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(buttonText),
        onPressed: callback,
      ),
    );
  }
}
