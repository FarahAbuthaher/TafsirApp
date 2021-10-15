import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

playAlert(BuildContext context) {
  // set up the buttons
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

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
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

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

searchDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed: () {},
  );
  Widget continueButton = TextButton(
    child: Text("Continue"),
    onPressed: () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("البحث في القراّن"),
    content: Column(
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: 'ابحث في القراّن.. على الأقل ثلاثةأحرف'),
        )
      ],
    ),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

listenDialog(BuildContext context) {
  // Radio List
  List<String> listeningList = [
    'الرحمن',
    'استماع للصفحة كاملة',
    'استماع للحزب',
    'استماع للجزء'
  ];
  String? listeningChoice;
  bool repeatCheck = false;
  bool currentCheck = false;
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
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "استماع",
      style: TextStyle(color: Colors.black),
      textAlign: TextAlign.center,
    ),
    content: StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return SingleChildScrollView(
          child: Column(children: [
            Text('الرجاء اختيار المادة المراد الاستماع لتلاوتها',
                textAlign: TextAlign.right),
            Divider(color: Colors.grey),
            ...listeningList.map((listeningItem) {
              return Column(
                children: [
                  RadioListTile(
                    title: Text(listeningItem, textAlign: TextAlign.right, style: TextStyle(fontSize: 20, color: Colors.black),),
                    subtitle: Divider(color: Colors.black),
                    activeColor: Colors.blue,
                    value: listeningList.indexOf(listeningItem),
                    groupValue: listeningChoice,
                    onChanged: (value) {
                      setState(() {
                        listeningChoice = listeningList[value as int];
                      });
                      print(listeningChoice);
                    },
                  ),
                ],
              );
            }).toList(),
            CheckboxListTile(
              title: Text('تكرار الاستماع', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold), textAlign: TextAlign.right,),
              checkColor: Colors.white,
              value: repeatCheck,
              onChanged: (bool? value) {
                setState(() {
                  repeatCheck = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('لاستماع من الصفحة الحالية', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),textAlign: TextAlign.right),
              checkColor: Colors.white,
              value: currentCheck,
              onChanged: (bool? value) {
                setState(() {
                  currentCheck = value!;
                });
              },
            )
          ]),
        );
      },
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

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

bookmarkDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = InkWell(
      child: Image.asset('assets/images/dialogIcons/delete.png'),
      onTap: () => Navigator.pop(context)
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog( titlePadding: EdgeInsets.zero,
    buttonPadding: EdgeInsets.zero,
    title: Container(height: 30,color: Color.fromARGB(255,233,239,234),child: Text("العلامات",textAlign: TextAlign.center, style: TextStyle(color: Colors.black),)),
    content: Text(''),
    actions: [
      Container( height: 35, color: Color.fromARGB(255,224,235,248),child: Align(alignment: Alignment.centerLeft,child: cancelButton)),
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
