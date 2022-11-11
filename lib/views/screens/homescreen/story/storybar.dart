import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/views/screens/homescreen/story/storyview.dart';


class storybar extends StatelessWidget {
  const storybar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          story(titile: " albin_royson"),
          story(titile: " albin_royson"),
          story(titile: " albin_royson"),
          story(titile: " albin_royson"),
          story(titile: " albin_royson"),
          story(titile: " albin_royson"),
        ],
      ),
    )
    ;
  }
}

class story extends StatelessWidget {
  String titile;

  story({
    required this.titile,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextSpan t = TextSpan(
        text: titile.length > 13 ? titile.substring(0, 13) + ' ...' : titile);
    return Container(
      //  height: 30,
      // color: Colors.blue,
      margin: EdgeInsets.all(5),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
        GestureDetector(
          onTap: () {
             Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => storyPage()),
                          );
            
          },
            child: Stack(
               alignment: Alignment.center,
              children: [
                Container(
                    width: 72,
                    height: 72,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: Colors.red)),
                Container(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(300.0),
                  child: Container(
                    height: 65,
                    width: 65,
                    child: Image.asset('assets/profile.jpeg'),
                  ),
                )),
              ],
            ),
          ),
          Container(
              // color: Colors.red,
              // width: 10,
              // margin: EdgeInsets.only(top: 5),
              child:Text( titile,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(fontSize: 13,color: Color.fromARGB(255, 150, 149, 149))),
          )
        ],
      ),
    );
  }
}
