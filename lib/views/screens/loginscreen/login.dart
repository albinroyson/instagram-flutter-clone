import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/views/screens/homescreen/homescreen.dart';
import 'package:instagram/views/screens/profilescreen/profilescreen.dart';
import "../../assetsPath.dart" as image;

class Login extends StatelessWidget {
   Login({super.key});
   final titleController = TextEditingController();
  String text = "No Value Entered";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          //color: Colors.amber,
          margin: EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Container(
              //color: Colors.amber,
              child: Flex(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                direction: Axis.vertical,
                children: [
                  // GridView.custom(gridDelegate: gridDelegate, childrenDelegate: childrenDelegate)
                  Flexible(
                    flex: 5,
                    fit: FlexFit.tight,
                    child: Container(
                        margin: EdgeInsets.only(bottom: 15),
                        alignment: Alignment.bottomCenter,
                        child: image.svg),
                  ),
                  Flexible(
                    flex: 6,
                    child: Container(
                      height: 110,
                      //color: Colors.red,
                      child: Column(
                        children: [
                          Container(
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              // controller: textEditingController,
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
                                filled: true, //<-- SEE HERE
                                fillColor: Color.fromARGB(255, 50, 49, 49),
                                // border: InputBorder.none,
                                hintText: 'Enter your email',
                                hintStyle: TextStyle(color: Colors.white30),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: TextField(
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

                                filled: true, //<-- SEE HERE
                                fillColor: Color.fromARGB(255, 50, 49, 49),
                                // border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.white30),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 50,
                    // margin: EdgeInsets.only(top: 15),
                    child: ElevatedButton(
                        child: const Text('Login'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        }),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      height: 38,
                      // color: Colors.red,
                      // margin: EdgeInsets.only(top: 5),
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgott password ?",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Row(
                      children: [
                        Container(
                          width: (MediaQuery.of(context).size.width / 2) - 40,
                          child: Divider(
                            color: Colors.white,
                            height: 20,
                            //thickness: 20,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 8,
                            right: 8,
                          ),
                          child: Text(
                            "OR",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.width / 2) - 40,
                          child: Divider(
                            color: Colors.white,
                            height: 10,
                            // thickness: 20,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Container(
                      // alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            child: Image.asset('assets/fb.png'),
                          ),
                          Container(
                            child: Text("login with facebook",
                                style: TextStyle(color: Colors.blue)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Divider(
                            color: Colors.white,
                            // height: 20,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: Text("Don't have a account ? signup",
                              style: TextStyle(color: Colors.white)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
