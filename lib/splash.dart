import 'dart:async';

import 'package:flutter/material.dart';

import 'homepage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer( const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const SecondScreen()
            )
        )
    );
  }
  @override

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: Stack(
  //         children: <Widget>[
  //           Container(
  //             decoration: const BoxDecoration(
  //               image: DecorationImage(image: AssetImage("lib/img/Home.jpg"), fit: BoxFit.cover,),
  //             ),
  //           ),
  //           // const Center(
  //           //   child: Text("Hello background"),
  //           // )
  //         ],
  //       )
  //   );
  // }
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("lib/img/Home.jpg"), fit: BoxFit.cover),
      ),
    );
  }
}