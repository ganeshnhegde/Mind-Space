import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mind_space/questiondata.dart';
import './quiz.dart';
import './result.dart';

class MyApp extends StatefulWidget {
  late int ageof;
  
   MyApp( dynamic  age){
     ageof = age;
    //  print(ageof);
   }
   int ageset(){
      return ageof;
   }
  // const MyApp({Key? key}) : super(key: key);
  

  @override
  _MyAppState createState() => _MyAppState(ageof);
}

class _MyAppState extends State<MyApp> {
  late int ageof;
  dynamic questions;
  _MyAppState(dynamic  age){
    ageof = age;
  
  const question1 = [
    {
      'questionText': 'Feeling alone',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Feeling tired or having little energy',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Trouble falling or staying asleep, or sleeping too much',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Thoughts or plans about hurting yourself?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
   {
      'questionText': 'Poor appetite or overeating',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Feeling bad about yourself - or that you are a failure or have let yourself or your family down',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Trouble concentrating on things, such as reading the newspaper or watching television',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Moving or speaking so slowly that other people could have noticed',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Thoughts that you would be better off dead, or of hurting yourself',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'If you have had any days with issues above, how difficult have these problems made it for you at work, home, school, or with other people?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
  ];

  const question2 = [
    {
      'questionText': 'Feeling  hopeless',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Feeling tired or having little energy',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Trouble falling or staying asleep, or sleeping too much',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Thoughts or plans about hurting yourself?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
   {
      'questionText': 'Poor appetite or overeating',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Feeling bad about yourself - or that you are a failure or have let yourself or your family down',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Trouble concentrating on things, such as reading the newspaper or watching television',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Moving or speaking so slowly that other people could have noticed',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Thoughts that you would be better off dead, or of hurting yourself',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'If you have had any days with issues above, how difficult have these problems made it for you at work, home, school, or with other people?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
  ]; 
    const question3 = [
    {
      'questionText': 'Feeling down, depressed, or hopeless',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Feeling tired or having little energy',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Trouble falling or staying asleep, or sleeping too much',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Thoughts or plans about hurting yourself?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
   {
      'questionText': 'Poor appetite or overeating',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Feeling bad about yourself - or that you are a failure or have let yourself or your family down',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Trouble concentrating on things, such as reading the newspaper or watching television',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Moving or speaking so slowly that other people could have noticed',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Thoughts that you would be better off dead, or of hurting yourself',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'If you have had any days with issues above, how difficult have these problems made it for you at work, home, school, or with other people?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
  ];



  const q = {
  "question1" : [
    {
      'questionText': 'Feeling alone',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Feeling tired or having little energy',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Trouble falling or staying asleep, or sleeping too much',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Thoughts or plans about hurting yourself?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
   {
      'questionText': 'Poor appetite or overeating',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Feeling bad about yourself - or that you are a failure or have let yourself or your family down',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Trouble concentrating on things, such as reading the newspaper or watching television',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Moving or speaking so slowly that other people could have noticed',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Thoughts that you would be better off dead, or of hurting yourself',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'If you have had any days with issues above, how difficult have these problems made it for you at work, home, school, or with other people?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
  ], "question2" :[
    {
      'questionText': 'Feeling  hopeless',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Feeling tired or having little energy',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Trouble falling or staying asleep, or sleeping too much',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Thoughts or plans about hurting yourself?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
   {
      'questionText': 'Poor appetite or overeating',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Feeling bad about yourself - or that you are a failure or have let yourself or your family down',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Trouble concentrating on things, such as reading the newspaper or watching television',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Moving or speaking so slowly that other people could have noticed',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Thoughts that you would be better off dead, or of hurting yourself',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'If you have had any days with issues above, how difficult have these problems made it for you at work, home, school, or with other people?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
  ] ,
  "question3" :[
    {
      'questionText': 'Feeling down, depressed, or hopeless',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Feeling tired or having little energy',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Trouble falling or staying asleep, or sleeping too much',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Thoughts or plans about hurting yourself?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
   {
      'questionText': 'Poor appetite or overeating',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Feeling bad about yourself - or that you are a failure or have let yourself or your family down',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Trouble concentrating on things, such as reading the newspaper or watching television',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Moving or speaking so slowly that other people could have noticed',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Thoughts that you would be better off dead, or of hurting yourself',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'If you have had any days with issues above, how difficult have these problems made it for you at work, home, school, or with other people?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
  ]};
     const q1={ "question1" : [
    {
      'questionText': 'Feeling alone',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Feeling tired or having little energy',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Trouble falling or staying asleep, or sleeping too much',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'More than half of the days', 'score': 3},
      ]
    },
    {
      'questionText': 'Thoughts or plans about hurting yourself?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
   {
      'questionText': 'Poor appetite or overeating',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Feeling bad about yourself - or that you are a failure or have let yourself or your family down',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'Nearly every day', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Trouble concentrating on things, such as reading the newspaper or watching television',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Moving or speaking so slowly that other people could have noticed',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'Thoughts that you would be better off dead, or of hurting yourself',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
    {
      'questionText': 'If you have had any days with issues above, how difficult have these problems made it for you at work, home, school, or with other people?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Hardly Ever', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
        {'text': 'All of the time', 'score': 3},
      ]
    },
  ]};

  var qdate ;
    Future<void> fetch() async{
    List ctlist=[];
    var inst = FirebaseFirestore.instance;
    CollectionReference cat = inst.collection('md');
    DocumentSnapshot snapshot = await cat.doc("LOME4WyIYRGfSg4Tn3GY").get();
    var data = snapshot.data();
    // var ctdata = data['hAzR4NLCVZPpCVeagtAs'] as List<dynamic>;
    print(data ?? 0);
  }

  fetch();

















  // FirebaseFirestore.instance.collection('md').add(q1);
  if(ageof>30){
    questions = question1;
  }
  else if(ageof<30 && ageof>23){
    questions = question2;
  }
  else{
    questions = question3;
  }
  }
  
  
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    
    if (_questionIndex < questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: _questionIndex < questions.length
            ? Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: questions,
        )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}