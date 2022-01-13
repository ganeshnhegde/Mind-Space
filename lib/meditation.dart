import 'package:flutter/material.dart';

class meditation extends StatefulWidget {
  const meditation({Key? key}) : super(key: key);

  @override
  _meditationState createState() => _meditationState();
}

class _meditationState extends State<meditation> {
  @override
  Widget build(BuildContext context) {
    String selectedImg;
    String selectTitle;
    // final Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    // selectedImg = arguments['image'];
    // selectTitle = arguments['title'];
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.43,
            width: MediaQuery.of(context).size.width,
            color: Color(0xffc7b8f5),
            child: Container(
              margin: EdgeInsets.only(right: 40, top: 20, bottom: 20),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(''), fit: BoxFit.contain)),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            'Meditation',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    'Meditation and concentration are the way to a life of serenity. Try these yogas',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(70),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(''),
                                        fit: BoxFit.contain)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('    Mindfulness   ', false, 0),
                                  sessionWidget('Loving-Kindness', false, 1),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget(
                                      '      Focused        ', false, 2),
                                  sessionWidget('     Movement     ', false, 3),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget(
                                      '        Mantra         ', false, 4),
                                  sessionWidget(' Transcendental ', false, 5),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container sessionWidget(String title, bool activeOrNot, int id) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 15,
                  spreadRadius: 1)
            ]),
        child: InkWell(
          onTap: () async {
            await showDialog(context: context, builder: (_) => ImageDialog(id));
          },
          child: Row(
            children: <Widget>[
              Text(
                '$title',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ));
  }
}

var images = [
  "https://mdsp.s3.ap-south-1.amazonaws.com/Mindfulness.jpg",
  "https://mdsp.s3.ap-south-1.amazonaws.com/lovekindness.jpg",
  "https://mdsp.s3.ap-south-1.amazonaws.com/focused.png",
  "https://mdsp.s3.ap-south-1.amazonaws.com/movement+med.png",
  "https://mdsp.s3.ap-south-1.amazonaws.com/mantra+meditation.jpg",
  "https://mdsp.s3.ap-south-1.amazonaws.com/transsce.jpg"
];

class ImageDialog extends StatelessWidget {
  late int ids;
  ImageDialog(id) {
    ids = id;
    print(ids);
  }

  @override
  Widget build(BuildContext context) {
    String urls = images[ids];
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: Image(
          image: NetworkImage(urls),
          width: 400,
        ),
      ),
    );
  }
}
