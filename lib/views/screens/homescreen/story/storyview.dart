import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:story_view/story_view.dart';

class storyPage extends StatefulWidget {
  const storyPage({super.key});

  @override
  State<storyPage> createState() => _storyPageState();
}

class _storyPageState extends State<storyPage> {
  final controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StoryView(
        storyItems: [
          StoryItem.text(title: "hello", backgroundColor: Colors.red),
           StoryItem.text(title: "hello world", backgroundColor: Colors.blue),
        ],
        controller: controller,
        inline: false,
        // repeat: false ,
      ),
    );
  }
}
