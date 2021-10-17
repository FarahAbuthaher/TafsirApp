import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(GreatTafsirApp());
}

class GreatTafsirApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Great Tafsirs',
      home: SplashScreen(),
    );
  }
}



