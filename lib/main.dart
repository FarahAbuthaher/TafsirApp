import 'package:flutter/material.dart';
import 'package:tafsairs_app/pages/great_tafsir_page.dart';

void main() {
  runApp(GreatTafsirApp());
}

class GreatTafsirApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Great Tafsirs',
      home: GreatTafsirPage(),
    );
  }
}



