// ignore_for_file: unnecessary_string_interpolations

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mind_space/food.dart';
import 'package:mind_space/question.dart';
import 'package:mind_space/yoga.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mind_space/exercise.dart';

import 'meditation.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Stream documentStream = FirebaseFirestore.instance
      .collection('mdspace')
      .doc('mindsp')
      .snapshots();
  // FirebaseFirestore firestore = FirebaseFirestore.instance;
  // CollectionReference users = FirebaseFirestore.instance.collection('mdspace');
  //  print(users.doc(documentId).get())
  //   Future<List> fetchAllContact() async {
  //   List contactList = [];
  //   CollectionReference z =
  //       await FirebaseFirestore.instance.collection('mdsp');
  //   print(z);
  //   return contactList;
  // }

  final List<String> _listItem = [
    'lib/img/Home.jpg',
    'lib/img/yoga.jpg',
    // 'lib/img/Home.jpg',
    // 'lib/img/Home.jpg',
    // 'lib/img/Home.jpg',
    // 'lib/img/Home.jpg',
    // 'lib/img/Home.jpg',
    // 'lib/img/Home.jpg',
    // 'lib/img/Home.jpg',
  ];

  TextEditingController myController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f8),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff817dc0),
                child: Container(
                  margin: const EdgeInsets.only(right: 40, top: 10, bottom: 20),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(''), fit: BoxFit.contain)),
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                child: Text(
                  "Welcome",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    openDialog();
                  },
                  child: const Text('Take Test',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      fixedSize: const Size(300, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  children: <Widget>[
                    categoryWidget('img1', "Diet "),
                    categoryWidget2('img2', " Exercise"),
                    categoryWidget3('img3', "Meditation"),
                    categoryWidget4('img4', "Yoga"),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container categoryWidget(String img, String title) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      width: MediaQuery.of(context).size.width * 0.3,
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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => food()),
          );
        },
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://mdsp.s3.ap-south-1.amazonaws.com/diet-food.png"),
                        fit: BoxFit.contain)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                '$title',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  // CategoryWidget2
  Container categoryWidget2(String img, String title) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      width: MediaQuery.of(context).size.width * 0.3,
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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductPage()),
          );
        },
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://mdsp.s3.ap-south-1.amazonaws.com/exercises.png"),
                        fit: BoxFit.contain)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                '$title',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  // categoryWidget3
  Container categoryWidget3(String img, String title) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      width: MediaQuery.of(context).size.width * 0.3,
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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => meditation()),
          );
        },
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://mdsp.s3.ap-south-1.amazonaws.com/yoga.png"),
                        fit: BoxFit.contain)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                '$title',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  // categoryWidget4

  Container categoryWidget4(String img, String title) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      width: MediaQuery.of(context).size.width * 0.3,
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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Yoga()),
          );
        },
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://mdsp.s3.ap-south-1.amazonaws.com/yoga+(1).png"),
                        fit: BoxFit.contain)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                '$title',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  void openProductPage(String img, String title) {
    Navigator.pushNamed(context, '/productPage',
        arguments: {'image': '$img', 'title': '$title'});
  }

  Future<String?> openDialog() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text("Enter Your Age"),
            content: TextField(
              controller: myController,
              autofocus: true,
              decoration: const InputDecoration(hintText: "eg :28"),
            ),
            actions: [
              TextButton(
                child: const Text("Submit"),
                onPressed: submit,
              )
            ],
          ));

  void submit() {
    String val = myController.text;
    var age = int.parse(val);
    // fetchAllContact();
    print(documentStream);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyApp(age)));
  }
}





    // void _navigateTo(BuildContext context) {
    //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Yoga()));
    // }



