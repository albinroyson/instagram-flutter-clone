import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import "../../assetsPath.dart" as image;

class login extends StatelessWidget {
   login({super.key});
   TextEditingController textEditingController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(children: [
          SizedBox(
            height: 190,
          ),
         
          Container(
            // margin: EdgeInsets.only(bottom: 10),
            width: 120,
            child: (image.svg),
          ),
          
          Container(
            child: const TextField(
              //controller: textEditingController,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                filled: true, //<-- SEE HERE
                fillColor: Color.fromARGB(255, 50, 49, 49),
                border: InputBorder.none,
                hintText: 'Enter your email',
              ),
            ),
          ),
           SizedBox(
            height: 20,
          ),
          Container(
            // margin: EdgeInsets.only(top: 15),
            child: const TextField(
              cursorColor: Color.fromARGB(255, 50, 49, 49),
              decoration: InputDecoration(
                filled: true, //<-- SEE HERE
                fillColor: Color.fromARGB(255, 50, 49, 49),
                border: InputBorder.none,
                hintText: 'Password',
              ),
            ),
          ),
             SizedBox(
            height: 20,
          ),
          Container(
            width: 400,
            height: 50,
            // margin: EdgeInsets.only(top: 15),
            child: ElevatedButton(
              child: const Text('Login'),
              onPressed: () {},
            ),
          ),
             SizedBox(
            height: 10,
          ),
          Container(
              // margin: EdgeInsets.only(top: 5),
              alignment: Alignment.centerRight,
              child: Text("Forgott password ?",
                  style: TextStyle(color: Colors.blue))),
          Container(
            // margin: EdgeInsets.only(top: 20),
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
                    height: 20,
                    // thickness: 20,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            //height: MediaQuery.of(context).size.height/3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Container(
              //margin: EdgeInsets.only(top: 30, right: 30),
              alignment: Alignment.center,
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
            // SizedBox(height: MediaQuery.of(context).size.height/8,),
       Spacer(),
            Container(
              width: (MediaQuery.of(context).size.width),
              child: Divider(
                color: Colors.white,
                height: 20,
              ),
            ),
            
            Container(
              margin: EdgeInsets.only(top:10,bottom: 10),
                child: Text("Don't have a account ? signup",
                    style: TextStyle(color: Colors.white)),
            )],),
          )
        ]),
      ),
      ),
    );
  }
}
