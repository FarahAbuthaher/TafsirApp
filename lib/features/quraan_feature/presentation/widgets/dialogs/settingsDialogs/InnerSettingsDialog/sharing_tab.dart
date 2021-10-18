import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SharingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: Scaffold(
            appBar: AppBar(
                automaticallyImplyLeading: false,
                centerTitle: true,
                backgroundColor: Color.fromARGB(255, 233, 239, 234),
                title: Text(
                  "انشر تؤجر",
                  style: TextStyle(color: Colors.black),
                )),
            body: Container(
              height: 400,
              width: 300,
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Image.asset('assets/images/socialMedia/godImage.jpg'),
                  Text(
                      ' اذا اعجبك تطبيق التفاسير العظيمة , فنرجو ان تساهم في دعم هذا الوقف الخيري من خلال نشره عبر وسائل التواصل الاجتماعي , انشر ولك الاجر ان شاء الله ', textAlign: TextAlign.right,),
                  SizedBox(
                    height: 10,
                  ),
                  SocialLogo(
                      image: 'assets/images/socialMedia/Logo_facebook.png',
                      name: 'انشر على Facebook',
                      color: Colors.blue[900]),
                  SizedBox(
                    height: 4,
                  ),
                  SocialLogo(
                      image: 'assets/images/socialMedia/logo_twitter.png',
                      name: 'انشر على Twitter',
                      color: Colors.blue),
                  SizedBox(
                    height: 4,
                  ),
                  SocialLogo(
                      image: 'assets/images/socialMedia/logo_linkedin.png',
                      name: 'انشر على LinkedIn',
                      color: Colors.blue[900]),
                  SizedBox(
                    height: 4,
                  ),
                  SocialLogo(
                      image: 'assets/images/socialMedia/logo_google.png',
                      name: 'انشر على Google',
                      color: Colors.red[900]),
                  SizedBox(
                    height: 4,
                  ),
                  SocialLogo(
                      image: 'assets/images/socialMedia/logo_whatsapp.png',
                      name: 'انشر على WhatsApp',
                      color: Colors.green[500]),
                ],
              )),
            )));
  }
}

class SocialLogo extends StatelessWidget {
  String image;
  String name;
  Color? color;

  SocialLogo({required this.image, required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 40,
            width: 200,
            color: color,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(height: 25, child: Image.asset(image)),
                Text(name,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white)),
              ],
            )),
      ],
    );
  }
}
