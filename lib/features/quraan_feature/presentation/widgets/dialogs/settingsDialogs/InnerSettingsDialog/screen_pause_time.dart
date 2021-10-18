import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenPauseTimeDialog extends StatelessWidget {
  List<String> timeChoices = ['5 قائق','10 دقائق','15 دقيقة', '20 دقيقة'];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        height: 500,
        child: Scaffold(
          appBar: AppBar(centerTitle: true, iconTheme: IconThemeData(color: Colors.blue,
          ) ,backgroundColor: Color.fromARGB(255, 233, 239, 234), title: Text(
            "زمن توقف الشاشة",
            style: TextStyle(color: Colors.black),
          )),
          body: Container(
            child: ListView.builder(
              itemCount: timeChoices.length,itemBuilder: (context, index) {
              return ListTile(
                  onTap: null,
                  leading: Icon(Icons.check, color: Colors.white),
                  trailing: Text(timeChoices[index],
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ));
            },),
          ),
        ),
      ),
    );
  }
}