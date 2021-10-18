import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserCreayedListsDialog extends StatelessWidget {
  const UserCreayedListsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
          body: TabBarView(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'إنشاء قائمة',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    onPressed: () => customDialog(context,ListCreate('قوائم البحث'))),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'إنشاء قائمة',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    onPressed: () => customDialog(context,ListCreate('قوائم الاّيات'))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
customDialog(BuildContext context, Widget dialogCustom) {
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return dialogCustom;
    },
  );}
class ListCreate extends StatelessWidget {
String title;

ListCreate(this.title);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      title: Container(
          height: 50,
          color: Color.fromARGB(255, 233, 239, 234),
          child: Text(
           title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          )),
      content: Container(
        height: 200,
        child: Column(
          children: [
            Text('اسم القائمة'),
            SizedBox(width: 100,child: TextField(textAlign: TextAlign.right,),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [TextButton(onPressed: () => Navigator.pop(context), child: Text('الغاء',style: TextStyle(fontSize: 15, color: Colors.blue),)),
                TextButton(onPressed: null, child: Text('حفظ',style: TextStyle(fontSize: 15, color: Colors.blue),)),

              ],
            )
          ],
        ),
      ),
    );
  }


}

