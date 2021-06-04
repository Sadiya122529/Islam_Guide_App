import 'package:flutter/material.dart';
import 'package:islam_guide/home.dart';
import 'package:islam_guide/kalima/kalima_screen.dart';

class KalimaFour extends StatefulWidget {
  @override
  _KalimaFourState createState() => _KalimaFourState();
}

class _KalimaFourState extends State<KalimaFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text('Kalima Tauheed',
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
                    height: 1275,
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
                              child: Text("كلمة التوحيد",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                      color: Color(hexColor('#cdcdcd')))),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                  "لا الهَ اِلَّا اللّهُ وَحْدَهُ لا شَرِيْكَ لَهْ، لَهُ الْمُلْكُ وَ لَهُ الْحَمْدُ يُحْى وَ يُمِيْتُ وَ هُوَحَىُّ لَّا يَمُوْتُ اَبَدًا اَبَدًا طذُو الْجَلَالِ وَ الْاِكْرَامِ ط بِيَدِهِ الْخَيْرُ ط وَهُوَ عَلى كُلِّ شَئ ٍ قَدِيْرٌ ط",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Color(hexColor('#d5136d')))),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                  "Laa ilaha illal lahoo wahdahoo la shareekalahoo lahul mulko walahul hamdo yuhee wa yumeeto wa hoa haiy yul la yamooto abadan abada zul jalali wal ikraam beyadihil khair. Wa howa ala kulli shayi in qadeer",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color(hexColor('#cdcdcd')))),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "(There is) none worthy of worship except Allah. He is only One. (There is) no partners for Him. For Him (is) the kingdom. And for Through Him (is) the Praise. He gives life and causes death. And He (is) Alive. He will not die, never, ever. Possessor of Majesty and Reverence. In His hand (is) the goodness. And He (is) the goodness. And He (is) on everything powerful.",
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
