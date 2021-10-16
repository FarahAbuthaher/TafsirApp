
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchAlertDialog extends StatelessWidget {
  const SearchAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed: () {},
    );
    Widget continueButton = TextButton(
      child: Text("Continue"),
      onPressed: () {},
    );

    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      buttonPadding: EdgeInsets.zero,
      title: Container(
          height: 30,
          color: Color.fromARGB(255, 233, 239, 234),
          child: Text(
            "البحث في القراّن",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          )),
      content: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 8,right: 8),
            child: Flexible(
              child: TextField(
                autofocus: true,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintTextDirection: TextDirection.rtl,
                  filled: true,
                  hintText: 'ابحث في القراّن.. على الأقل ثلاثةأحرف',
                  contentPadding:
                  const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0, right: 8),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 3),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
          ),
          // Row of buttons
          if(true)
          // tab bar
            Container(
              height: 30,
              width: double.infinity,
              color: Colors.lightBlue[100],
              child: Text(
                '0 :عدد النتائج',
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.black),
              ),
            )
        ],
      ),
      actions: [
        Column(
          children: [Divider(color: Colors.black,), Row( children: [cancelButton,
            continueButton,],)],
        ),

      ],
    );
  }
}
