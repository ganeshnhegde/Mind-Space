import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(45),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,

      ),
    );
  }
}
