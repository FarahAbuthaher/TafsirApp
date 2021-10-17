import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AyatListDialog extends StatelessWidget {
  List<String> ayat = ['',];
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        height: 500,
        child: Scaffold(
          appBar: AppBar(centerTitle: true, iconTheme: IconThemeData(color: Colors.blue,
          ) ,backgroundColor: Color.fromARGB(255, 233, 239, 234), title: Text(
            "قوائم الاّيات",
            style: TextStyle(color: Colors.black),
          )),
          body: ListView.builder(
            itemCount: ayat.length,itemBuilder: (context, index) {
            return ListTile(
                onTap: null,
                selectedTileColor: Colors.blue,
                trailing: Text(ayat[index],
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ));
          },),
        ),
      ),
    );
  }
}