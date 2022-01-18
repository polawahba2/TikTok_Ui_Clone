import 'package:flutter/material.dart';
import 'package:tiktok_ui_clone/Screens/Posts/Post1.dart';
import 'package:tiktok_ui_clone/Screens/Posts/Post2.dart';
import 'package:tiktok_ui_clone/Screens/Posts/Post3.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PageView(
        scrollDirection: Axis.vertical,
        children: const [
          Post1(),
          Post2(),
          Post3(),
        ],
      ),
    ]);
  }
}
