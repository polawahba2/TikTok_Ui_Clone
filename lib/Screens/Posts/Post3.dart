import 'package:flutter/material.dart';

import 'PostTemplate.dart';

class Post3 extends StatelessWidget {
  const Post3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userName: 'mina.adel@mail',
      videoDescreption: ' TikTok Toutorials ui',
      numberOfComments: '700',
      numberOfLikes: '3320',
      numberOfShare: '790',
      image:
          'https://cdn.onebauer.media/one/media/5e78/e823/2639/214e/96fa/5e90/celeb-tik-tok-2.png?format=jpg&quality=80&width=500&ratio=1-1&resize=aspectfit',
    );
  }
}
