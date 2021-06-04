import 'package:flutter/material.dart';
import 'package:islam_guide/duas/dua_screen.dart';
import 'package:islam_guide/home.dart';

class FirstAshra extends StatefulWidget {
  @override
  _FirstAshraState createState() => _FirstAshraState();
}

class _FirstAshraState extends State<FirstAshra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text('First Ashra Dua',
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
              MaterialPageRoute(builder: (context) => DuaScreen()),
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
                    child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                            shadowColor: Colors.black,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 20,
                            child: Container(
                                height: 485,
                                width: 425,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/border1.jpg"),
                                  fit: BoxFit.cover,
                                )),
                                padding: EdgeInsets.all(15),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text(
                                          "يَا حَيُّ يَا قَيُّومُ بِرَحْمَتِكَ أَسْتَغيثُ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color(hexColor('#d5136d')))),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Text(
                                          "Ya Hayyu Ya Qayyum bi rehmatika astaghees",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color(hexColor('#cdcdcd')))),
                                      SizedBox(
                                        height: 70,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Text(
                                          "Oh Everliving, The Everlasting, I seek Your help through Your mercy",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color(hexColor('#d5136d'))),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ))))))));
  }
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
