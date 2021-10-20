import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tafsairs_app/features/quraan_feature/presentation/widgets/buttons/buttons.dart';

class GreatTafsirPage extends StatefulWidget {
  @override
  _GreatTafsirPageState createState() => _GreatTafsirPageState();
}

class _GreatTafsirPageState extends State<GreatTafsirPage> {
  List<String> rahmanPages = [
    'assets/images/surah/p531@2x.png',
    'assets/images/surah/p532@2x.png',
    'assets/images/surah/p533@2x.png',
  ];

  bool onClick = true;

  bool zoom = false;

  _toggle() {
    setState(() => zoom = !zoom);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: width > 700 ? 700 : width,
            child:
                /*zoom? InkWell(
              onDoubleTap: _toggle,
              child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                      child: Container(
                        height: height > 800 ? 700 : height * 0.72,
                        width: width > 760 ? 400 : width * 0.8,
                        child: PageView.builder(
                          reverse: true,
                          itemCount: rahmanPages.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                color: Colors.white,
                                child: Image.asset(rahmanPages[index],
                                    fit: BoxFit.fill));
                          },
                        ),
                      ),
                    ),]
              ),
            ):*/
                Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                    child: Image.asset(
                  'assets/images/quranPage/QuranPageBackground.jpg',
                  fit: BoxFit.fill,
                )),
                Positioned(
                  top: 80,
                  bottom: 30,
                  child: Container(
                    height: height > 500 ? 300 : height * 0.5,
                    width: width > 760 ? 500 : width * 0.97,
                    child: Image.asset(
                      'assets/images/quranPage/QuranFrameDesign.png',
                      scale: 0.8,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                    top: 85,
                    right: width > 760 ? 200 : width * 0.17,
                    child: Image.asset(
                      'assets/images/surah/Joza027.png',
                      scale: 4.5,
                    )),
                Positioned(
                    top: 85,
                    left: width > 760 ? 200 : width * 0.17,
                    child: Image.asset(
                      'assets/images/surah/Sora055.png',
                      scale: 4.5,
                    )),
                AllTafsirButtons(),
                Positioned(
                  top: zoom ? 0 : (height > 800 ? 90 : height * 0.17),
                  bottom: zoom ? 0 : null,
                  child: InkWell(
                    onDoubleTap: _toggle,
                    child: Container(
                      height: zoom ? 660 : (height > 800 ? 700 : height * 0.72),
                      width: zoom ? 490 : (width > 760 ? 400 : width * 0.8),
                      child: PageView.builder(
                        reverse: true,
                        itemCount: rahmanPages.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              color: Colors.white,
                              child: Image.asset(rahmanPages[index],
                                  fit: BoxFit.fill));
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
