import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 255,
      height: 55,
      margin: const EdgeInsets.only(top: 10.0),
      color: Colors.transparent,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        color: Colors.deepPurple[300],
        textColor: Colors.black,
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
