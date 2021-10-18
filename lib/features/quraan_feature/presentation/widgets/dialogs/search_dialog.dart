import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchAlertDialog extends StatefulWidget {
  @override
  _SearchAlertDialogState createState() => _SearchAlertDialogState();
}

class _SearchAlertDialogState extends State<SearchAlertDialog> {
  bool ayaState = false;
  bool rootState = false;
  bool wordState = true;
  bool wordRootState = false;
  String twoLetters = 'حرفين';
  String threeLetters = 'ثلاثة احرف';

  void allFalse() {
    setState((){
    ayaState = false;
    rootState = false;
    wordState = false;
    wordRootState = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget addButton = IconButton(
      icon: Icon(Icons.playlist_add_rounded, color: Colors.blue,),
      onPressed: () {},
    );
    Widget checkButton = IconButton(
      icon: Icon(Icons.check, color: Colors.blue,),
      onPressed: () {},
    );
    return AlertDialog(
      scrollable: true,
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
            padding: EdgeInsets.only(bottom: 8.0, left: 8, right: 8),
            child: TextField(
              autofocus: true,
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintTextDirection: TextDirection.rtl,
                filled: true,
                hintText: 'ابحث في القراّن.. على الأقل ${(rootState || wordRootState)? twoLetters: threeLetters}',
                contentPadding: const EdgeInsets.only(
                    left: 14.0, bottom: 8.0, top: 8.0, right: 8),
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
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SearchButton(
                  onPressed: () => setState(() {allFalse();
                  ayaState = true;
                  }),
                  icon: ayaState?'assets/images/dialogIcons/Ayah_selected.png' :'assets/images/dialogIcons/Ayah.png',
                ),
                SearchButton(
                  onPressed: () => setState(() {allFalse();
                  wordRootState = true;
                  }),
                  icon:wordRootState? 'assets/images/dialogIcons/word_root_selected.png':'assets/images/dialogIcons/word_root.png',
                ),
                SearchButton(
                  onPressed: () => setState(() {allFalse();
                  rootState = true;
                  }),
                  icon:rootState?'assets/images/dialogIcons/root_selected.png': 'assets/images/dialogIcons/root.png',
                ),
                SearchButton(
                  onPressed: () => setState(() {allFalse();
                  wordState = true;
                  }),
                  icon:wordState?'assets/images/dialogIcons/word_selected.png': 'assets/images/dialogIcons/word.png',
                ),
              ],
            ),
          ),
          // Row of buttons
          if (true)
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
            ),
          SizedBox(height: 50,),
        ],
      ),
      actions: [
        Column(
          children: [
            Divider(
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                addButton,
                checkButton
              ],
            )
          ],
        ),
      ],
    );
  }
}

class SearchButton extends StatelessWidget {
  final VoidCallback? onPressed;
  String icon;

  SearchButton(
      {required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Image.asset(icon,
        scale: 1.9,
      ),
    );
  }
}
