import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class gallery extends StatelessWidget {
  const gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return photoitem(image: "",);
  }
}

class photoitem extends StatelessWidget {
  String image;
  photoitem({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(image),
    );
  }
}
