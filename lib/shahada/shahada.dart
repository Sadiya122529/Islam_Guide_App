import 'package:flutter/material.dart';
import 'package:islam_guide/home.dart';

class ShahadatScreen extends StatefulWidget {
  @override
  _ShahadatScreenState createState() => _ShahadatScreenState();
}

class _ShahadatScreenState extends State<ShahadatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text('Shahadat',
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
            padding: EdgeInsets.only(top: 75, left: 20, right: 20, bottom: 25),
            child: Column(
              children: <Widget>[
                Container(
                    height: 300,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[900],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/images/border01.jpg"),
                          fit: BoxFit.cover,
                        )),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Text("ٱلشَّهَادَة",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color(hexColor('#cdcdcd')))),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                  "اشْهَدُ انْ لّآ اِلهَ اِلَّا اللّهُ وَحْدَه لَا شَرِيْكَ لَه، وَ اَشْهَدُ اَنَّ مُحَمَّدً اعَبْدُهوَرَسُولُه",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color(hexColor('#d5136d')))),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                  "Ashahado an laa ilaaha illal laho wahdahoo laa shareeka lahoo wa ash hado anna Mohammadan abdo hoo wa rasoolohoo",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(hexColor('#cdcdcd')))),
                            ),
                          ],
                        ),
                      ),
                    )),
                SizedBox(
                  height: 35,
                ),
                Container(
                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[900],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/images/plane .jpg"),
                          fit: BoxFit.cover,
                        )),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text("I bear witness!",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(hexColor('#cdcdcd')))),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                  "That no-one is worthy of worship but Allah, the One alone, without partner, and I bear witness That Muhammad is His Servant and Messenger",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(hexColor('#d5136d')))),
                            ),
                          ],
                        ),
                      ),
                    )),
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
