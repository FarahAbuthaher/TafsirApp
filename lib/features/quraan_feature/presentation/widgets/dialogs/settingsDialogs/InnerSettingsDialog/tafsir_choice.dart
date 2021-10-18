import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TafsirChoiceDialog extends StatelessWidget {
  List<String> tafsirs = ['إرشاد العقل السليم الى مزايا الكتاب','أضواء البيان في تفسير القرآن/الشنقيطي','أيسر التفاسير / أبو بكر الجزائري'];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        height: 500,
        child: Scaffold(
          appBar: AppBar(centerTitle: true, iconTheme: IconThemeData(color: Colors.blue,
          ) ,backgroundColor: Color.fromARGB(255, 233, 239, 234), title: Text(
            "اختيار التفسير",
            style: TextStyle(color: Colors.black),
          )),
          body: Container(
            child: ListView.builder(
              itemCount: tafsirs.length,itemBuilder: (context, index) {
              return ListTile(
                  onTap: null,
                  leading: Icon(Icons.check, color: Colors.white),
                  trailing: Text(tafsirs[index],
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                  ));
            },),
          ),
        ),
      ),
    );
  }
}