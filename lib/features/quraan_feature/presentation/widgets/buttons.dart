import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'alert_dialogs.dart';

class TafsirButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String iconAsset;

  const TafsirButton({required this.onPressed, required this.iconAsset});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          SizedBox(
            width: 5,
          ),
          Expanded(
              child: InkWell(
            onTap: onPressed,
            child: Image.asset(
              iconAsset,
              scale: 0.7,
            ),
          )),
          SizedBox(
            width: 5,
          )
        ],
      ),
    );
  }
}

class AllTafsirButtons extends StatefulWidget {
  // List<String> iconsImages =['assets/images/topIcons/addBookMark_icon.png','assets/images/topIcons/addBookMark_icon.png','assets/images/topIcons/addBookMark_icon.png',];
  @override
  _AllTafsirButtonsState createState() => _AllTafsirButtonsState();
}

class _AllTafsirButtonsState extends State<AllTafsirButtons> {
  bool onClick = false;

  void _toggle() {
    setState(() => onClick = !onClick);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height * 0.08,
          color: Colors.white,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.asset(
                'assets/images/quranPage/AyahActionHeader.png',
                fit: BoxFit.cover,
                scale: 0.7,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TafsirButton(
                        onPressed: () => customDialog(context, PlayAudio()),
                        iconAsset: 'assets/images/topIcons/playEnd1x.png'),
                    TafsirButton(
                        onPressed: () => customDialog(context, PlayAllSelected()),
                        iconAsset: 'assets/images/topIcons/play_all_icon.png'),
                    TafsirButton(
                        onPressed: () => customDialog(context, UserCreayedListsDialog()),
                        iconAsset: 'assets/images/topIcons/ayaList.png'),
                    TafsirButton(
                        onPressed: () => customDialog(context, SettingsDialog()),
                        iconAsset: 'assets/images/topIcons/settings_icon.png'),
                    TafsirButton(
                        onPressed: () => customDialog(context, AyatListDialog()),
                        iconAsset: 'assets/images/topIcons/list_icon.png'),
                    TafsirButton(
                        onPressed: () => customDialog(context, BookMarkListDialog()),
                        iconAsset:
                            'assets/images/topIcons/bookmark_list_icon.png'),
                    TafsirButton(
                        onPressed: () => _toggle(),
                        iconAsset: onClick
                            ? 'assets/images/topIcons/addBookMark_icon.png'
                            : 'assets/images/topIcons/removeBookmark_icon.png'),
                    TafsirButton(
                        onPressed: () => customDialog(context, SearchAlertDialog()),
                        iconAsset: 'assets/images/topIcons/search_icon.png'),
                  ]),

            ],
          ),
        ),
        if (!onClick)
          Image.asset(
            'assets/images/quranPage/bookmark.png',
            scale: 2,
          )
      ],
    );
  }

  customDialog(BuildContext context, Widget dialogCustom) {
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialogCustom;
      },
    );
  }
}


