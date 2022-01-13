import 'package:flutter/material.dart';
import 'package:mind_space/blog.dart';
import 'package:mind_space/home.dart';
import 'package:mind_space/homepage.dart';
import 'package:mind_space/splash.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    // if (resultScore <= 8) {
    //   resultText = resultScore.toString();
    //   print(resultText);
    // } else if (resultScore <= 12) {
    //   resultText = resultScore.toString();
    //   print(resultText);
    // } else if (resultScore <= 16) {
    //   resultText = resultScore.toString();

    // } else {
    //   resultText = resultScore.toString();
    // }
    if (resultScore > 23) {
      resultText =
          "No need to worry\n Feel free to cantact\n Dr. Amogh R\n9448641800 \n\n";
    } else if (resultScore > 15 && resultScore <= 23) {
      resultText =
          "No need to worry. \nDo regular exercise and maintain  healthy lifestyle \n\n";
    } else {
      resultText = "You are perfectly alright\n\n";
    }
    return resultText;
  }

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.deepPurple[300],
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
            width: 500,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 20,
                    spreadRadius: 1,
                    offset: const Offset(0, 10),
                  )
                ]),
            child: InkWell(
              onTap: () {},
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: Container(
                      width: 250,
                      height: 250,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://mdsp.s3.ap-south-1.amazonaws.com/happy-face.png"),
                              fit: BoxFit.fitWidth)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      resultPhrase,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text('Go to Home'),
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          )),

//           TextButton(
//             onPressed: () {
//                       Navigator.push(context,MaterialPageRoute(builder: (context) =>  SecondScreen()),
//   );
// },
//             child: const Text('Go To Home'),
//             style: ButtonStyle(
//                 foregroundColor: MaterialStateProperty.all(Colors.deepPurple[800])),
//           )
        ],
      ),
    );
  }
}
