import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/Constants/singleton.dart';
import 'package:instagram/views/screens/homescreen/homescreen.dart';
import 'package:instagram/views/screens/homescreen/story/storybar.dart';
import 'package:instagram/views/screens/profilescreen/tabview.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                    child: Row(
                  children: [
                    Container(
                      child: Text(
                        "albin_royson",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                )),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  // color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(300.0),
                              child: Container(
                                height: 68,
                                width: 68,
                                child: Image.asset('assets/profile.jpeg'),
                              ),
                            )),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                "Albin Royson",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      postcount(
                        number: "130",
                        name: "Posts",
                      ),
                      postcount(
                        number: "1,330",
                        name: "Follower",
                      ),
                      postcount(
                        number: "599",
                        name: "Following",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 400,
                  height: 45,
                  // margin: EdgeInsets.only(top: 15),
                  child: ElevatedButton(
                    child: const Text('Edit Profile'),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      story(titile: "highlights"),
                      story(titile: "highlights"),
                      story(titile: "highlights"),
                      story(titile: "highlights"),
                      story(titile: "highlights"),
                      story(titile: "highlights"),
                    ],
                  ),
                ),
                TabBarDemo()
              ],
            )),
      ),
      bottomNavigationBar: Bottomicon(),
    );
  }
}

class postcount extends StatelessWidget {
  String number;
  String name;

  postcount({Key? key, required this.number, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Text(
              number,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(child: Text(name, style: TextStyle(color: Colors.white)))
        ],
      ),
    );
  }
}
