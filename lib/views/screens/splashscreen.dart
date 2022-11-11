import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'dart:async';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/views/screens/homescreen/homescreen.dart';
import 'package:instagram/views/screens/loginscreen/login.dart';
import 'package:instagram/views/screens/loginscreen/loginscreen.dart';
import '../assetsPath.dart' as image;

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>Login())));
    return Scaffold(
        body: SafeArea(
      child: Center(child: image.svg),
    ));
  }
}
