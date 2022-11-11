import 'package:flutter/material.dart';
import 'package:instagram/views/screens/homescreen/homescreen.dart';
import 'package:instagram/views/screens/profilescreen/profilescreen.dart';

Bottomicon bottomicon = new Bottomicon();
Home home = new Home();
Profile profile = new Profile();
Route createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}