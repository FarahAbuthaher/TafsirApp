import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TranslationSettingsDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        height: 400,
        child: Scaffold(
          appBar: AppBar(centerTitle: true, iconTheme: IconThemeData(color: Colors.blue,
          ) ,backgroundColor: Color.fromARGB(255, 233, 239, 234), title: Text(
            "اعدادات التراجم",
            style: TextStyle(color: Colors.black),
          )),
          body: Column(
            children: [
              Text(''),
            ],
          ),
        ),
      ),
    );
  }
}