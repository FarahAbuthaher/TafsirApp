import 'package:flutter/material.dart';
import 'features/quraan_feature/presentation/pages/great_tafsir_page.dart';

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



