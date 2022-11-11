import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/views/screens/homescreen/homescreenwidgets/comment.dart';
import '../../../assetsPath.dart' as image;

class post extends StatelessWidget {
  const post({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        posts(),
        posts(),
        posts(),
        posts(),
      ],
    );
  }
}

class posts extends StatefulWidget {
  const posts({
    Key? key,
  }) : super(key: key);

  @override
  State<posts> createState() => _postsState();
}

class _postsState extends State<posts> {
 
  bool like = false;
  bool showheartoverlay = false;
  pressed() {
    like = !like;
  }

  doubletapped() {
    setState(() {
      like = true;
      showheartoverlay = true;

      if (showheartoverlay) {
        Timer(const Duration(milliseconds: 500), () {
          setState(() {
            showheartoverlay = false;
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      // color: Colors.red,
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: Container(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(300.0),
                    child: Container(
                      height: 45,
                      width: 45,
                      child: Image.asset('assets/profile.jpeg'),
                    ),
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Text("albin_royson",
                      style:
                          TextStyle(color: Color.fromARGB(255, 246, 243, 243))),
                ),
                Spacer(),
                Container(
                  child: Icon(Icons.more_vert, color: Colors.white),
                ),
              ],
            ),
          ),
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                doubletapped();
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: FittedBox(
                      child: Image.asset('assets/post.jpeg'),
                      fit: BoxFit.fill,
                    )),
                Center(
                    // heightFactor: 20,

                    child: showheartoverlay
                        ? Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 100,
                          )
                        : Container())
              ],
            ),
          ),
          Container(
            // color: Colors.blue,
            height: 45,
            child: Row(
              children: [
                GestureDetector(
                  child: Container(
                    child: Icon(
                      like ? Icons.favorite : Icons.favorite_border,
                      color: like ? Colors.red : Colors.white,
                    ),
                  ),
                  onTap: (() {
                    setState(() {
                      pressed();
                    });
                  }),
                ),
                SizedBox(
                  width: 10,
                ),
                  Container(
                  width: 20,
                  child: image.commenticon,
                ),
             
                SizedBox(
                  width: 10,
                ),
                   Container(
                  width: 20,
                  child: image.shareicon,
                ),
              
                Spacer(),
                Container(
                  child: Icon(Icons.more_vert, color: Colors.white),
                ),
              ],
            ),
          ),
          like ?Container(
            alignment: Alignment.topLeft,
            child: Text("albin_royson likes your post",
                style: TextStyle(color: Color.fromARGB(255, 246, 243, 243))),
          ):
          Container(),
          comment()
          
        ],
      ),
    );
  }
}
