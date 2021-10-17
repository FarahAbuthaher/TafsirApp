import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'allSettingsDialogs.dart';

class SettingsDialog extends StatefulWidget {
  @override
  _SettingsDialogState createState() => _SettingsDialogState();
}

class _SettingsDialogState extends State<SettingsDialog> {
  List<String> settingsList = [
    'اختيار القارئ',
    'تنزيل السور',
    'تنزيل السور التي تحتوي الاّيات',
    'اختيار التفسير',
    'اعدادات التراجم',
    'زمن توقف الشاشة'
  ];

  bool notifBool = false;
  List<Widget> settingListDialog = [
    ReaderChoiceDialog(),
    SuwarListDialog(),
    AyatListDialog(),
    TafsirChoiceDialog(),
    TranslationSettingsDialog(),
    ScreenPauseTimeDialog()
  ];

  customSettingsDialog(BuildContext context, Widget dialogCustom) {
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialogCustom;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      title: Container(
          height: 40,
          color: Color.fromARGB(255, 233, 239, 234),
          child: Text(
            "الإعدادات",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          )),
      content: Container(
        height: 500,
        width: 300,
        child: ListView(
          children: [
            ...settingsList.map((settingsItem) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SettingsTileButton(
                    onPressed: () => customSettingsDialog(context,
                        settingListDialog[settingsList.indexOf(settingsItem)]),
                    text: settingsItem,
                  ),
                  Divider(
                    color: Colors.grey[200],
                  )
                ],
              );
            }).toList(),
            CheckboxListTile(
              title: Text(
                'تفعيل الإشعارات',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.right,
              ),
              checkColor: Colors.white,
              value: notifBool,
              onChanged: (bool? value) {
                setState(() {
                  notifBool = value!;
                });
              },
            ),
            Divider(
              color: Colors.grey[200],
            ),
            Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: null,
                    child: Text(
                      'المساعدة',
                      style: TextStyle(color: Colors.black),
                    ))),
            Divider(
              color: Colors.grey[200],
            ),
            SettingsTileButton(
              onPressed: ()=> customSettingsDialog(context, AboutUsDialog()),
              text: 'نبذة عنا',
            ),
            Divider(
              color: Colors.grey[200],
            ),
            Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () => customSettingsDialog(context, SharingDialog()),
                    child: Text(
                      'انشر تؤجر',
                      style: TextStyle(color: Colors.black),
                    ))),
            Divider(
              color: Colors.grey[200],
            )
          ],
        ),
      ),
    );
  }
}

class SettingsTileButton extends StatelessWidget {
  String text;
  final VoidCallback? onPressed;

  SettingsTileButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Icon(
        Icons.arrow_back_ios,
        color: Colors.grey[300],
      ),
      trailing: Text(
        text,
        textAlign: TextAlign.right,
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
    );
  }
}
