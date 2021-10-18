import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Scaffold(
        appBar: AppBar(centerTitle: true, iconTheme: IconThemeData(color: Colors.blue,
        ) ,backgroundColor: Color.fromARGB(255, 233, 239, 234), title: Text(
          "نبذة عنا",
          style: TextStyle(color: Colors.black),
        )),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset('assets/images/socialMedia/godImage.jpg'),
              SizedBox(height: 5,),
              Text(
                  'تمتلك وقفية الأمير غازي للفِكر القرآنيّ موقع التفاسير العظيمة GreatTafsirs.com وهو وقف ذُرّيّ غير ربحي ومقرّه الأردن تم تأسيسه في عام ١٤٣٣هـ /٢٠١٢ م. وقد أسّس مشاريع أخرى مثل موقع الفِكر القرآنيّ'
                      ' QuranicThought.com والخطوط الإسلامية المجانيّة FreeIslamicCalligraphy.com . كم أنّه من خلال سمو الأمير غازي بن محمد، مؤسس هذه الوقفية، فإنّ الموقع مرتبط بموقع التفسير الكبير Altafsir.com وموقع السيرة Alsirah.com بالإضافة إلى مؤسسة آل البيت المَلكيّة للفِكر الإسلاميّ في عَمّان، الأردن.', textAlign: TextAlign.right,)
            ],
          ),
        ),
      ),
    );
  }
}