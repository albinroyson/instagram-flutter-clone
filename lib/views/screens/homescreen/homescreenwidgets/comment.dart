import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class comment extends StatefulWidget {
  const comment({super.key});

  @override
  State<comment> createState() => _commentState();
}

class _commentState extends State<comment> {
  String val = "";
  // List<String> userCommentItems = ["nn", "kk"];
  // void addcomment(String value) {
  //   userCommentItems.add(value);
  // }

  // Widget buildcommentlist() {
  //   return ListView.builder(
  //     itemBuilder: (context, index) {
  //       if (index < userCommentItems.length)
  //         return buildcommentitem(userCommentItems[index]);
  //       else
  //         return Container(
  //           child: Text("hello", style: TextStyle(color: Color.fromARGB(255, 76, 21, 21))),
  //         );
  //     },
  //   );
  // }

  // Widget buildcommentitem(String comment) {
  //   return ListTile(
  //     title: Text(comment),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    TextEditingController commentController = new TextEditingController();
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                //  Container(
                //   color: Colors.red,
                //   child: buildcommentlist()),
                Text(
                  val,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            child: TextField(
              onSubmitted: (value) {
                setState(() {
                  val = value;
                });
              },

              controller: commentController,
              style: TextStyle(color: Colors.white),
              //controller: textEditingController,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: false, //<-- SEE HERE
                fillColor: Color.fromARGB(255, 50, 49, 49),
                // border: InputBorder.none,
                hintText: 'Leave a comment',
                hintStyle: TextStyle(color: Colors.white30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
