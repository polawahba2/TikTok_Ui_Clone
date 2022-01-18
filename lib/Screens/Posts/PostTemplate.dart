import 'package:flutter/material.dart';
import 'package:tiktok_ui_clone/Constants/Bottons.dart';
import 'package:tiktok_ui_clone/Constants/Constants.dart';

class PostTemplate extends StatelessWidget {
  String userName;
  String videoDescreption;
  String numberOfLikes;
  String numberOfComments;
  String numberOfShare;

  String image;

  PostTemplate({
    Key? key,
    required this.userName,
    required this.videoDescreption,
    required this.numberOfLikes,
    required this.numberOfComments,
    required this.numberOfShare,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: NetworkImage(image),
        fit: BoxFit.fill,
      )),
      child: Stack(
        children: [
          Container(
            alignment: const Alignment(-1, 1),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    userName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: videoDescreption,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const TextSpan(text: '#TikTok Clone #flutter '),
                    ]),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              alignment: AlignmentDirectional.bottomEnd,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Bottons(
                    icon: TikTokIcons.heart,
                    text: numberOfLikes,
                    color: Colors.red,
                  ),
                  Bottons(
                    icon: TikTokIcons.chat_bubble,
                    text: numberOfComments,
                  ),
                  Bottons(
                    icon: TikTokIcons.reply,
                    text: numberOfShare,
                    size: 28,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CircleAvatar(
                    radius: 19,
                    backgroundImage: NetworkImage(
                      'https://www.teahub.io/photos/full/70-708378_speaker-png.jpg',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
