import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mind_space/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final Future<FirebaseApp> _inintilization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {

      return FutureBuilder(
        future: _inintilization,
        builder:(context, snapshot){

          return MaterialApp(
                title: 'Splash Screen',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                home: const MyHomePage(),
                debugShowCheckedModeBanner: false,
              );
        });
      

  }
}


