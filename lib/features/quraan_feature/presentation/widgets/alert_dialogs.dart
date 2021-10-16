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
    contentPadding: EdgeInsets.zero,
    titlePadding: EdgeInsets.zero,
    buttonPadding: EdgeInsets.zero,
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
                    title: Text(
                      listeningItem,
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
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
      onTap: () => Navigator.pop(context));

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
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

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

searchListDialog(BuildContext context) {
  // set up the AlertDialog
  AlertDialog dialog = AlertDialog(
    contentPadding: EdgeInsets.zero,
    content: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(text: 'قوائم البحث'),
            Tab(text: 'قوائم الاّيات'),
          ],
        ),
        body: TextButton(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                'إنشاء قائمة',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            onPressed: () {}),
      ),
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return dialog;
    },
  );
}

ayatListDialog(BuildContext context) {
  // set up the AlertDialog
  AlertDialog dialog = AlertDialog(
    buttonPadding: EdgeInsets.zero,
    contentPadding: EdgeInsets.zero,
    content: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(text: 'قائمة الاأجزاء'),
            Tab(text: 'قائمة السور'),
          ],
        ),
        body: TabBarView(
          children: [
            AyatBarView('ابحث في الاجزاء'),
            AyatBarView('ابحث في السور'),
          ],
        ),
      ),
    ),
    actionsPadding: EdgeInsets.zero,
    actions: [
      Container(
        height: 30,
        color: Colors.lightBlue[100],
        child: Row(
          children: [
            Spacer(
              flex: 2,
            ),
            Flexible(
              child: SizedBox(
                height: 20,
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 10),
                    fillColor: Colors.white,
                    hintTextDirection: TextDirection.rtl,
                    filled: true,
                    hintText: '604:1 ',
                    contentPadding: EdgeInsets.only(bottom: 20, right: 20),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              ':اذهب للصفحة ',
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      )
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return dialog;
    },
  );
}

class AyatBarView extends StatelessWidget {
  String hintText;

  AyatBarView(this.hintText);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(width: 5, color: Colors.grey),
          borderRadius: BorderRadius.circular(3)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Flexible(
          child: TextField(
            autofocus: true,
            textDirection: TextDirection.rtl,
            style: TextStyle(fontSize: 22.0, color: Colors.black),
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              fillColor: Colors.white,
              hintTextDirection: TextDirection.rtl,
              filled: true,
              hintText: hintText,
              contentPadding:
                  const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
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
    );
  }
}
