import 'package:flutter/material.dart';
import 'package:islam_guide/home.dart';
import 'package:islam_guide/kalima/kalima_screen.dart';

class KalimaThree extends StatefulWidget {
  @override
  _KalimaThreeState createState() => _KalimaThreeState();
}

class _KalimaThreeState extends State<KalimaThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text('Kalima Tamjeed',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => KalimaScreen()),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.black,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              ),
            )
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          ),
        ),
        body: Container(
          height: 1000,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(hexColor('#BBD2C5')),
                  Color(hexColor('#536976'))
                ]),
          ),
          child: SafeArea(
              child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 25),
            child: Column(
              children: <Widget>[
                Container(
                    height: 900,
                    width: 750,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/images/plane.jpg"),
                          fit: BoxFit.cover,
                        )),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 35,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Text("كلمة تمجيد",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                      color: Color(hexColor('#cdcdcd')))),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                  "سُبْحَان لِلّه وَ الْحَمْدُ لِلّهِ وَ لآ اِلهَ اِلّا اللّهُ، وَ اللّهُ اَكْبَرُ وَلا حَوْلَ وَلاَ قُوَّة ِلَّا بِاللّهِ الْعَلِىّ الْعَظِيْم",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Color(hexColor('#d5136d')))),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Text(
                                  "Subhanallahe wal hamdulillahe wa laa ilaha illal laho wallahooakbar. wala haola wala quwwata illa bilahil aliyil azeem",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color(hexColor('#cdcdcd')))),
                            ),
                            SizedBox(
                              height: 70,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Text(
                                "Glory be to Allah and Praise to Allah, and there is no God but Allah, and Allah is the Greatest. And there is no Might or Power except with Allah",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color(hexColor('#d5136d'))),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          )),
        ));
  }
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
