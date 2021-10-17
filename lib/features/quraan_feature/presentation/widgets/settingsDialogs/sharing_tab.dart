import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SharingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false,centerTitle: true,backgroundColor: Color.fromARGB(255, 233, 239, 234), title: Text(
          "انشر تؤجر",
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