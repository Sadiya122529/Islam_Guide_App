import 'package:flutter/material.dart';
import 'package:islam_guide/duas/first_ashra.dart';
import 'package:islam_guide/duas/iftar.dart';
import 'package:islam_guide/duas/laylatul_qadr.dart';
import 'package:islam_guide/duas/moonsight.dart';
import 'package:islam_guide/duas/second_ashra.dart';
import 'package:islam_guide/duas/sehri.dart';
import 'package:islam_guide/duas/someone.dart';
import 'package:islam_guide/duas/third_ashra.dart';
import 'package:islam_guide/home.dart';

class DuaScreen extends StatefulWidget {
  @override
  _DuaScreenState createState() => _DuaScreenState();
}

class _DuaScreenState extends State<DuaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Ramadan Duas',
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
                  Container(
                      width: 350,
                      height: 50,
                      child: MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MoonSight()),
                            );
                          },
                          color: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            "For Ramadan Moon Sighting Dua",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(hexColor('#cdcdcd')),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                      width: 350,
                      height: 50,
                      child: MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SehriDua()),
                            );
                          },
                          color: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            "For Fasting - Sehri Dua",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(hexColor('#cdcdcd')),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                  Padding(padding: const EdgeInsets.all(10)),
                  Container(
                      width: 350,
                      height: 50,
                      child: MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IftarDua()),
                            );
                          },
                          color: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            "For Breaking Fast - Iftar Dua",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(hexColor('#cdcdcd')),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                      width: 350,
                      height: 80,
                      child: MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SomeoneDua()),
                            );
                          },
                          color: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            "For Someone who provides you Iftar",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(hexColor('#cdcdcd')),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                      width: 350,
                      height: 50,
                      child: MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FirstAshra()),
                            );
                          },
                          color: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            "For First Ashra Dua",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(hexColor('#cdcdcd')),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                      width: 350,
                      height: 50,
                      child: MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondAshra()),
                            );
                          },
                          color: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            "For Second Ashra Dua",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(hexColor('#cdcdcd')),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                      width: 350,
                      height: 50,
                      child: MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ThirdAshra()),
                            );
                          },
                          color: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            "For Third Ashra Dua",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(hexColor('#cdcdcd')),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                      width: 350,
                      height: 50,
                      child: MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LaylatulQadr()),
                            );
                          },
                          color: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            "For Laylatul Qadr ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(hexColor('#cdcdcd')),
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
