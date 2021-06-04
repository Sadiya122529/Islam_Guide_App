import 'package:flutter/material.dart';
import 'package:islam_guide/home.dart';
import 'package:islam_guide/kalima/kalima1.dart';
import 'package:islam_guide/kalima/kalima2.dart';
import 'package:islam_guide/kalima/kalima3.dart';
import 'package:islam_guide/kalima/kalima4.dart';
import 'package:islam_guide/kalima/kalima5.dart';
import 'package:islam_guide/kalima/kalima6.dart';

class KalimaScreen extends StatefulWidget {
  @override
  _KalimaScreenState createState() => _KalimaScreenState();
}

class _KalimaScreenState extends State<KalimaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('The 6 Kalimas',
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
            MaterialPageRoute(builder: (context) => HomePage()),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(hexColor('#BBD2C5')),
                    Color(hexColor('#536976'))
                  ]),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 75),
                  ),
                  SizedBox(
                      width: 350,
                      height: 50,
                      child: MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KalimaOne()),
                            );
                          },
                          color: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            "First Kalima: Tayyab",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  SizedBox(
                      width: 350,
                      height: 50,
                      child: MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KalimaTwo()),
                            );
                          },
                          color: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            "Second Kalima: Shahadat",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                  Padding(padding: const EdgeInsets.all(10)),
                  SizedBox(
                      width: 350,
                      height: 50,
                      child: MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KalimaThree()),
                            );
                          },
                          color: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            "Third Kalima: Tamjeed",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  SizedBox(
                      width: 350,
                      height: 50,
                      child: MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KalimaFour()),
                            );
                          },
                          color: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            "Fourth Kalima: Tauheed",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  SizedBox(
                      width: 350,
                      height: 50,
                      child: MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KalimaFive()),
                            );
                          },
                          color: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            "Fifth Kalima: Astaghfar",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  SizedBox(
                      width: 350,
                      height: 50,
                      child: MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KalimaSix()),
                            );
                          },
                          color: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            "Sixth Kalima: Radde Kufr",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
