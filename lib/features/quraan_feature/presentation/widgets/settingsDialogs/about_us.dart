import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Scaffold(
        appBar: AppBar(centerTitle: true, iconTheme: IconThemeData(color: Colors.blue,
        ) ,backgroundColor: Color.fromARGB(255, 233, 239, 234), title: Text(
          "نبذة عنا",
          style: TextStyle(color: Colors.black),
        )),
        body: Column(
          children: [
            Text(''),
          ],
        ),
      ),
    );
  }
}