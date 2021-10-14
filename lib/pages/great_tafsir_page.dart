import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tafsairs_app/widgets/buttons.dart';

class GreatTafsirPage extends StatelessWidget {
  List<String> rahmanPages = [
    'assets/images/surah/p533@2x.png',
    'assets/images/surah/p532@2x.png',
    'assets/images/surah/p531@2x.png',
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: width > 800 ? 800 : width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                    child: Image.asset(
                  'assets/images/quranPage/QuranPageBackground.jpg',
                  fit: BoxFit.fill,
                )),
                Column(
                  children: [
                    Container(
                        height: height * 0.085,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/quranPage/AyahActionHeader.png',
                              fit: BoxFit.cover,
                              scale: 0.7,
                            ),
                            AllTafsirButtons(),
                          ],
                        )),
                    Image.asset(
                      'assets/images/quranPage/QuranFrameDesign.png',
                    ),
                  ],
                ),
                Positioned(
                  top: height > 500 ? 100 : height * 0.2,
                  child: Container(
                    height: height > 1000 ? 900 : height * 0.71,
                    width: width > 800 ? 500 : width * 0.82,
                    child: PageView.builder(
                      itemCount: rahmanPages.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            color: Colors.white,
                            child: Image.asset(rahmanPages[index]));
                      },
                    ),
                  ),
                ),
                Positioned(
                    top: 66,
                    right: width > 600 ? 95 : width * 0.17,
                    child: Image.asset(
                      'assets/images/surah/Joza027.png',
                      scale: 4.5,
                    )),
                Positioned(
                    top: 66,
                    left: width > 600 ? 97 : width * 0.17,
                    child: Image.asset(
                      'assets/images/surah/Sora055.png',
                      scale: 4.5,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
