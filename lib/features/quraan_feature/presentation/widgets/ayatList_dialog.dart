import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AyatListDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
  }
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
    );
  }
}
