import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReaderChoiceDialog extends StatelessWidget {
List<String> readers = ['محمد صديق المنشاوي', 'محمود الحصري', 'عبد الباسط عبد الصمد'];
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Scaffold(
        appBar: AppBar(centerTitle: true, iconTheme: IconThemeData(color: Colors.blue,
        ) ,backgroundColor: Color.fromARGB(255, 233, 239, 234), title: Text(
          "اختيار القارئ",
          style: TextStyle(color: Colors.black),
        )),
        body: ListView.builder(
            itemCount: readers.length,itemBuilder: (context, index) {
          return ListTile(
          hoverColor: Colors.blue,
           leading: Icon(Icons.check, color: Colors.white),
            trailing: Text(readers[index],
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.black, fontSize: 15),
          ));
        },),
      ),
    );
  }
}
