import 'package:flutter/material.dart';
import 'package:tiktok_ui_clone/Screens/HomeScreen/HomeScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.white30,
            selectedItemColor: Colors.white70,
          )),
      home: HomeScreen(),
    ),
  );
}
