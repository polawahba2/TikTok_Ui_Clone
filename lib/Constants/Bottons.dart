import 'package:flutter/material.dart';

class Bottons extends StatelessWidget {
  IconData icon;
  String text;
  Color color;
  double size;
  Bottons({
    Key? key,
    required this.icon,
    required this.text,
    this.color = Colors.white,
    this.size = 36.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
            size: size,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
