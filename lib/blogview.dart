import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BlogView extends StatelessWidget {
  late String titles, times, authors;
  BlogView(title, author, time) {
    titles = title;
    times = time;
    authors = author;
  }
  // const BlogView({Key? key}) : super(key: key);
  late List dat;
  Future<void> fetch() async {
    List ctlist = [];
    var inst = FirebaseFirestore.instance;
    CollectionReference cat = inst.collection('mdspace');
    DocumentSnapshot snapshot = await cat.doc("mindsp").get();
    var data = snapshot.data() as Map;
    // var ctdata = data['mindsp'] as List<dynamic>;
    print(data);
  }

  get handleClick => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color(0xff817dc0), title: const Text(""),
        //   // actions: <Widget>[
        //   //   PopupMenuButton<String>(
        //   //     onSelected: handleClick,
        //   //     itemBuilder: (BuildContext context) {
        //   //       return {'Help', 'FAQ','About us'}.map((String choice) {
        //   //         return PopupMenuItem<String>(
        //   //           value: choice,
        //   //           child: Text(choice),
        //   //         );
        //   //       }).toList();
        //   //     },
        //   //   ),
        //   // ],
        // ),
        body: SingleChildScrollView(
      child: Container(
          margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Column(
            children: [
              Text(
                titles,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 20,
              ),
              Text(times,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.justify),
            ],
          )),
    ));
  }
}
