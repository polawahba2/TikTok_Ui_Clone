import 'package:flutter/material.dart';

import 'PostTemplate.dart';

class Post2 extends StatelessWidget {
  const Post2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userName: 'malak.makram@mail',
      videoDescreption: ' TikTok Toutorials ui',
      numberOfComments: '800',
      numberOfLikes: '3600',
      numberOfShare: '900',
      image:
          'https://images.popbuzz.com/images/55902?crop=16_9&width=660&relax=1&signature=ZhLsmBL13ZhR5vE8zmCuRQAQa5g=',
    );
  }
}
