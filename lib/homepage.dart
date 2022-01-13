import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mind_space/profile.dart';
import 'package:mind_space/profilemain.dart';
import 'blog.dart';
import 'home.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int currIndex = 0;
  // final screens = [const Home(), BlogHomeOnePage(),ProfileMain()];

  void handleClick(String value) {
    switch (value) {
      case 'Help':
        help(context);
        break;
      case 'FAQ':
        faq(context);
        break;
      case 'About us':
        aboutus(context);
        break;
    }
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     bottomNavigationBar: BottomNavigationBar(
  //       selectedItemColor: Colors.blue,
  //       unselectedItemColor: Colors.grey,
  //       currentIndex: currIndex,
  //       onTap: (value){
  //         currIndex = value;
  //         setState(() {});
  //       },
  //       items: const [
  //         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
  //         BottomNavigationBarItem(icon: Icon(Icons.apps),label: "Blog"),
  //         BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
  //       ],
  //     ),
  //     appBar: AppBar(backgroundColor: const Color(0xff817dc0) ,title:const Text("Mind Space"),elevation: 0,
  //       actions: <Widget>[
  //         PopupMenuButton<String>(
  //           onSelected: handleClick,
  //           itemBuilder: (BuildContext context) {
  //             return {'Help', 'FAQ','About us'}.map((String choice) {
  //               return PopupMenuItem<String>(
  //                 value: choice,
  //                 child: Text(choice),
  //               );
  //             }).toList();
  //           },
  //         ),
  //       ],
  //     ),
  //     body: screens[currIndex],
  //     );
  // }

  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: const Color(0xff817dc0),
          title: const Text("Mind Space"),
          elevation: 0,
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: handleClick,
              itemBuilder: (BuildContext context) {
                return {'Help', 'FAQ', 'About us'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Colors.white, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset:
              true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows:
              true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style1,
          // Choose the nav bar style with this property.
        ));
  }

  List<Widget> _buildScreens() {
    return [Home(), BlogHomeOnePage(), SimpleLoginScreen()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.app),
        title: ("Blog"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.profile_circled),
        title: ("Profile"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  void help(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            title: Text('Feel free to contact'),
            content: Text(
                """Our Member Experience support team is available 7 days a week. Here are few ways to reach us: \n●	email: hganesh@gmail.com\nWe aim to get back to members within 24 hours. 
●	phone: 9663874917.\nYou can leave us a message and one of our team members will follow up shortly.
"""),
            actions: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('OK')),
            ],
          );
        });
  }

  void faq(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            title: Text('FAQ'),
            content: Text(
              """How to use Mind Space ?\nStep 1: Take a test. This test will let you know your mental health status.\nStep 2: Check the results.\nStep 3: Follow the exercise regularly.\nStep 4: Explore.   
""",
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('OK')),
            ],
          );
        });
  }

  void aboutus(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            title: Text('What is Mind Space?'),
            content: Text(
                'Mind Space assists you in overcome any mental difficulties you may be experiencing. Our Questions assists you in identifying the problem, and the resulting information directs you down the correct road to take, ensure that you will find a solution.',
                textAlign: TextAlign.justify),
            actions: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('OK')),
            ],
          );
        });
  }
}
