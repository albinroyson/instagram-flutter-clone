import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../../assetsPath.dart' as image;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class appbar extends StatelessWidget {
  const appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(width: 120, child: image.svg),
                Spacer(),
                Container(
                    child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.facebookMessenger),
                  onPressed: () {},
                  color: Colors.white,
                )),
                Container(
                    child: IconButton(
                        icon: const FaIcon(FontAwesomeIcons.plus),
                        onPressed: () {},
                        color: Colors.white)),
              ],
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 154, 152, 152),
            height: 10,
          ),
        ],
      ),
    );
  }
}
