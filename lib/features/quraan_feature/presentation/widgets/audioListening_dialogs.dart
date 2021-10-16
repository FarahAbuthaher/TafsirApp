import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayAudio extends StatelessWidget {
// No audio play available widget
  @override
  Widget build(BuildContext context) {
    Widget cancelButton = TextButton(
      child:
      Text("لا", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      onPressed: () => Navigator.pop(context),
    );
    Widget continueButton = TextButton(
      child: Text(
        "نعم",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      onPressed: () => Navigator.pop(context),
    );
    return AlertDialog(

      buttonPadding: EdgeInsets.zero,
      title: Text(
        "!تنبيه",
        style: TextStyle(color: Colors.black),
        textAlign: TextAlign.center,
      ),
      content: Text(
        "لم يتم تنزيل السور المراد الاستماع إلى اّياتها مسبقا. هل تريد تنزيل الصور؟",
        textAlign: TextAlign.right,
      ),
      actions: [
        Column(
          children: [
            Divider(color: Colors.black),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [cancelButton, continueButton],
            )
          ],
        )
      ],
    );
  }
}

class PlayAllSelected extends StatefulWidget {
  // Radio List
  @override
  _PlayAllSelectedState createState() => _PlayAllSelectedState();
}

class _PlayAllSelectedState extends State<PlayAllSelected> {
  List<String> listeningList = [
    'الرحمن',
    'استماع للصفحة كاملة',
    'استماع للحزب',
    'استماع للجزء'
  ];

  String? listeningChoice;

  bool repeatCheck = false;

  bool currentCheck = false;

  @override
  Widget build(BuildContext context) {

    // set up the buttons
    Widget cancelButton = MaterialButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text("إلغاء"),
        onPressed: () => Navigator.pop(context));
    Widget continueButton = MaterialButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text("موافق"),
        onPressed: () => Navigator.pop(context));
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      buttonPadding: EdgeInsets.zero,
      title: Text(
        "استماع",
        style: TextStyle(color: Colors.black),
        textAlign: TextAlign.center,
      ),
      content:
        SingleChildScrollView(
              child: Column(children: [
                Text('الرجاء اختيار المادة المراد الاستماع لتلاوتها',
                    textAlign: TextAlign.right),
                Divider(color: Colors.grey),
                ...listeningList.map((listeningItem) {
                  return Column(
                    children: [
                      RadioListTile(
                        title: Text(
                          listeningItem,
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        activeColor: Colors.blue,
                        value: listeningItem,
                        groupValue: listeningChoice,
                        onChanged: (String? value) {
                          setState(() =>
                            listeningChoice = value
                          );
                          print(listeningChoice);
                        },
                      ),
                      Divider(color: Colors.black)
                    ],
                  );
                }).toList(),
                CheckboxListTile(
                  title: Text(
                    'تكرار الاستماع',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  ),
                  checkColor: Colors.white,
                  value: repeatCheck,
                  onChanged: (bool? value) {
                    setState(() {
                      repeatCheck = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('الاستماع من الصفحة الحالية',
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right),
                  checkColor: Colors.white,
                  value: currentCheck,
                  onChanged: (bool? value) {
                    setState(() {
                      currentCheck = value!;
                    });
                  },
                )
              ]),
            ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            cancelButton,
            continueButton,
          ],
        )
      ],
    );
  }
}

