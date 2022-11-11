import 'package:instagram/views/screens/homescreen/homescreen.dart';
import 'package:instagram/views/screens/profilescreen/profilescreen.dart';
import 'package:instagram/views/screens/splashscreen.dart';

getRouts() {
  return {
    "/": (context) => splash(),
    "/profile": (context) => Profile(),
    "/home": (context) => Home(),
  };
}
