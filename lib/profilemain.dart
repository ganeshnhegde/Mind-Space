import 'package:flutter/material.dart';
import 'package:mind_space/profile.dart';

class ProfileMain extends StatefulWidget {
  // const ProfileMain({Key? key}) : super(key: key);
  late String email;
  ProfileMain(email){
    email = email;
  }

  @override
  State<ProfileMain> createState() => _ProfileMainState(email);
}

class _ProfileMainState extends State<ProfileMain> {
  late String emails;
  _ProfileMainState(email){
    emails=email;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff817dc0), Color(0xff817dc0)]
                  )
              ),
              child: Container(
                width: double.infinity,
                height: 350.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://image.shutterstock.com/image-vector/user-icon-trendy-flat-style-260nw-1678508335.jpg",
                        ),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(emails,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 300.00,

                        child: RaisedButton(
                            onPressed: (){},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)
                            ),
                            elevation: 0.0,
                            padding: EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerRight,
                                    end: Alignment.centerLeft,
                                    colors: [Colors.white,Colors.white]
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                                alignment: Alignment.center,
                                child: const Text("update Profile",
                                  style: TextStyle(color: Colors.black, fontSize: 26.0, fontWeight:FontWeight.w300),
                                ),
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 300.00,

            child: RaisedButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)
                ),
                elevation: 0.0,
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Color(0xff817dc0),Color(0xff817dc0)]
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text("Change password",
                      style: TextStyle(color: Colors.black, fontSize: 26.0, fontWeight:FontWeight.w300),
                    ),
                  ),
                )
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 300.00,

            child: RaisedButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)
                ),
                elevation: 0.0,
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Color(0xff817dc0),Color(0xff817dc0)]
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text("Contact Counsellor",
                      style: TextStyle(color: Colors.black, fontSize: 26.0, fontWeight:FontWeight.w300),
                    ),
                  ),
                )
            ),
          ),
          SizedBox(
            height: 20.0,
          ),

          Container(
            width: 300.00,

            child: RaisedButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)
                ),
                elevation: 0.0,
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  
                
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Color(0xff817dc0),Color(0xff817dc0)]
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child:InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SimpleLoginScreen()));
                    },
                    child: Container(
                    constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text("Logout",
                      style: TextStyle(color: Colors.black, fontSize: 26.0, fontWeight:FontWeight.w300),
                    ),
                  ),),
                )
            ),
          ),
        ],
      ),
    );
  }
}
