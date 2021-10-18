import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookMarkListDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget cancelButton = InkWell(
        child: Image.asset('assets/images/dialogIcons/delete.png'),
        onTap: () => Navigator.pop(context));
    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      buttonPadding: EdgeInsets.zero,
      title: Container(
          height: 30,
          color: Color.fromARGB(255, 233, 239, 234),
          child: Text(
            "العلامات",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          )),
      content: Text(''),
      actions: [
        Container(
            height: 35,
            color: Color.fromARGB(255, 224, 235, 248),
            child: Align(alignment: Alignment.centerLeft, child: cancelButton)),
      ],
    );
  }
}
