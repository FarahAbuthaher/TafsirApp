import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tafsairs_app/features/quraan_feature/presentation/widgets/buttons.dart';

class GreatTafsirPage extends StatelessWidget {
  List<String> rahmanPages = [
    'assets/images/surah/p533@2x.png',
    'assets/images/surah/p532@2x.png',
    'assets/images/surah/p531@2x.png',
  ];
  bool onClick = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: width > 700 ? 700 : width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                    child: Image.asset(
                  'assets/images/quranPage/QuranPageBackground.jpg',
                  fit: BoxFit.fill,
                )),
                Positioned(
                  top: 60,
                  bottom: 30,
                  child: Image.asset(
                    'assets/images/quranPage/QuranFrameDesign.png',
                    scale: 0.8,
                  ),
                ),
                Positioned(
                  top: height > 800 ? 90 : height * 0.13,
                  child: Container(
                    height: height > 1000 ? 1000 : height * 0.74,
                    width: width > 600 ? 400 : width * 0.8,
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
                    top: 70,
                    right: width > 600 ? 200 : width * 0.17,
                    child: Image.asset(
                      'assets/images/surah/Joza027.png',
                      scale: 4.5,
                    )),
                Positioned(
                    top: 70,
                    left: width > 600 ? 200 : width * 0.17,
                    child: Image.asset(
                      'assets/images/surah/Sora055.png',
                      scale: 4.5,
                    )),
                AllTafsirButtons()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
