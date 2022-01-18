import 'package:flutter/material.dart';

import 'package:tiktok_ui_clone/Screens/Posts/PostTemplate.dart';

class Post1 extends StatelessWidget {
  const Post1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userName: 'pola.wahba@mail',
      videoDescreption: ' TikTok Toutorials ui',
      numberOfComments: '500',
      numberOfLikes: '2300',
      numberOfShare: '700',
      image:
          'https://www.aljadeed.com/wp-content/uploads/2021/08/TikTok-%D8%AA%D8%AD%D8%AF%D8%AB-%D9%86%D8%B8%D8%A7%D9%85-%D8%A7%D9%84%D8%A8%D8%AB-%D8%A7%D9%84%D9%85%D8%A8%D8%A7%D8%B4%D8%B1-%D8%A8%D9%85%D9%85%D9%8A%D8%B2%D8%A7%D8%AA-%D8%AC%D8%AF%D9%8A%D8%AF%D8%A9.jpg',
    );
  }
}
