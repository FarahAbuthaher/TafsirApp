import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuwarListDialog extends StatelessWidget {
  List<String> suwar = ['الفاتحة', 'البقرة', 'اّل عمران'];
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        height: 500,
        child: Scaffold(
          appBar: AppBar(centerTitle: true, iconTheme: IconThemeData(color: Colors.blue,
          ) ,backgroundColor: Color.fromARGB(255, 233, 239, 234), title: Text(
            "نزيل السور",
            style: TextStyle(color: Colors.black),
          )),
          body: Container(
            child: ListView.builder(
              itemCount: suwar.length,itemBuilder: (context, index) {
              return ListTile(
                  onTap: null,
                  selectedTileColor: Colors.blue,
                  trailing: Text(suwar[index],
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