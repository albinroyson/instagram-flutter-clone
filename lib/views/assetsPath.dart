import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String logo = 'assets/instagram.svg';
final String heart = 'assets/heart.svg';
final String share = 'assets/share.svg';
final String comment = 'assets/comment.svg';
final String home = 'assets/home.svg';
final String reels = 'assets/reels.svg';




final Widget svg = SvgPicture.asset(logo,color: Color.fromARGB(255, 255, 255, 255),);
final Widget hearticon = SvgPicture.asset(heart,color: Color.fromARGB(255, 255, 255, 255));
final Widget shareicon= SvgPicture.asset(share,color: Color.fromARGB(255, 255, 255, 255));
final Widget commenticon= SvgPicture.asset(comment,color: Color.fromARGB(255, 255, 255, 255));
final Widget homeicon= SvgPicture.asset(home,color: Color.fromARGB(255, 255, 255, 255));
final Widget reelsicon= SvgPicture.asset(reels,color: Color.fromARGB(255, 255, 255, 255));
