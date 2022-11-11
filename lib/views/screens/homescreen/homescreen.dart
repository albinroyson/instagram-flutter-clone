import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/Constants/singleton.dart';
import 'package:instagram/views/screens/homescreen/homescreenwidgets/appbar.dart';
import 'package:instagram/views/screens/homescreen/homescreenwidgets/bottomiconlist.dart';
import 'package:instagram/views/screens/homescreen/homescreenwidgets/comment.dart';
import 'package:instagram/views/screens/homescreen/homescreenwidgets/post.dart';
import 'package:instagram/views/screens/homescreen/story/storybar.dart';
import 'package:instagram/views/screens/profilescreen/profilescreen.dart';
// import 'package:instagram/views/screens/profilescreen/u.dart';
import '../../assetsPath.dart' as image;

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  final list = [
    homescreen(),
    homescreen(),
    homescreen(),
    homescreen(),
  ];
  int Index = 0;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    BottomNavigationBar get() {
      return new BottomNavigationBar(
          currentIndex: widget.Index,
          selectedItemColor: Color.fromARGB(255, 255, 32, 7),
          unselectedItemColor: Color.fromARGB(212, 243, 241, 241),
          //fixedColor: Colors.amber,
          onTap: (value) {
            setState(() {
              widget.Index = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: items);
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: widget.list[widget.Index],
        ),
      ),
      bottomNavigationBar: Bottomicon(),
    );
  }
}

class Bottomicon extends StatelessWidget {
  Bottomicon({
    Key? key,
  }) : super(key: key);
  bool isFromHome = false;
  bool isFromProfile = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      //  color: Colors.blue,
      height: 65,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => Home(),
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
              ),
            );
            // Navigator.pop(context);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //       builder: (context) => home, fullscreenDialog: true),
            // );
           // Navigator.pushNamed(context, "/home");
          },
          child: Container(
            width: 30,
            child: image.homeicon,
          ),
        ),
        Container(
          width: 20,
          child: image.commenticon,
        ),
        Container(
          child: (image.reelsicon),
          width: 30,
        ),
        Container(
          child: (image.hearticon),
        ),
        GestureDetector(
          onTap: () {
            // Navigator.pop(context);
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => Profile(),
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
              ),
            );
            // Navigator.of(context).push(createRoute(Profile()));
            //Navigator.pushNamed(context, "/profile");


            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //       builder: (context) => Profile(), fullscreenDialog: true),
            // );
          },
          child: Container(
            child: Container(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(300.0),
              child: Container(
                height: 30,
                width: 30,
                child: Image.asset('assets/profile.jpeg'),
              ),
            )),
          ),
        ),
      ]),
    );
  }
}

class homescreen extends StatelessWidget {
  const homescreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          appbar(),
          Container(
              child: Expanded(
                  child: ListView(children: [
            storybar(),
            post(),
          ]))),
        ],
      )),
    );
  }
}
