import 'package:flutter/material.dart';
import 'package:islam_guide/alquran/quran_screen/screen.dart';
import 'package:islam_guide/alquran/surah1-38.dart';
import 'package:islam_guide/home.dart';

class SurahAudio extends StatefulWidget {
  @override
  _SurahAudioState createState() => _SurahAudioState();
}

class _SurahAudioState extends State<SurahAudio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Surah Audio',
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
            MaterialPageRoute(builder: (context) => AlQuran()),
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
                padding: EdgeInsets.all(50),
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioSurah1()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 1",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الْفَاتِحَة",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-FATIHA",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 2",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("البقرة",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-BAQARA",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 3",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("آل عمران",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-IMRAN ",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 4",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("النساء",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AN-NISA'",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 5",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("المائدة",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-MAIDAH ",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 6",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الأنعام",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-ANAM",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 7",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الأعراف",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-ARAF",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 8",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الأنفال",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-ANFAL",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 9",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("التوبة",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AT-TAWBAH",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 10",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("يونس",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah YUNUS",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 11",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("هود",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah HUD",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 12",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("يوسف",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah YUSUF",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 13",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الرعد",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AR-RAAD",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 14",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("إبراهيم",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah IBRAHIM",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 15",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الحجر",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-HIJR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 16",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("النحل",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AN-NAHL",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 17",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الإسراء",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-ISRA",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 18",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الكهف",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-KAHF",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 19",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("مريم",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah MARYAM",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 20",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("طه",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah TA-HA",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 21",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الأنبياء",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-ANBIYA",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 22",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الحج",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-HAJJ",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 23",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("المؤمنون",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-MUMINUN",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 24",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("النور",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AN-NUR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 25",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الفرقان",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL FURQANE",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 26",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الشعراء",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AS-SHUARAA",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 27",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("النمل",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AN-NAML",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 28",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("القصص",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-QASAS",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 29",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("العنكبوت",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-ANKABUT",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 30",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الروم",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AR-RUM",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 31",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("لقمان",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah LUQMAN",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 32",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("السجدة",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AS-SAJDA",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 33",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الأحزاب",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-AHZAB",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 34",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("سبأ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah SABA",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 35",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("فاطر",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah FATIR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 36",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("يس",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah YASSINE (YAS-IN)",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 37",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الصافات",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AS-SAFFAT",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 38",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("ص",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah SAD",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 39",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الزمر",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AZ-ZUMAR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 40",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("غافر",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah GAFIR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 41",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("فصلت",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah FUSSILAT",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 42",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الشورى",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah ASH SHURA",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 43",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الزخرف",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AZZUKHRUF",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 44",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الدخان",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AD-DUKHAN",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 45",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الجاثية",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-JATHYA",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 46",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الأحقاف",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-AHQAF",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 47",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("محمد",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah MUHAMMAD",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 48",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الفتح",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-FATAH",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 49",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الحجرات",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-HUJURAT",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 50",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("ق",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah QAF",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 51",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الذاريات",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AD-DARIYAT",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 52",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الطور",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AT-TUR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 53",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("النجم",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AN-NAJM",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 54",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("القمر",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-QAMAR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 55",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الرحمن",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AR-RAHMAN",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 56",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الواقعة",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-WAQI'A",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 57",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الحديد",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-HADID",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 58",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("المجادلة",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-MUJADALAH",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 59",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الحشر",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-HASHAR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 60",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الممتحنة",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-MUMTAHANAH",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 61",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الصف",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AS-SAFF",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 62",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الجمعة",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-JUMUA",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 63",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("المنافقون",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-MUNAFIQUN",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 64",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("التغابن",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AT-TAGABUN",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 65",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الطلاق",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AT-TALAQ",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 66",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("التحريم",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AT-TAHRIM",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 67",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الملك",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-MULK",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 68",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("القلم",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-QALAM",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 69",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الحاقة",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-HAQQAH",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 70",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("المعارج",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL- MAARIJ",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 71",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("نوح",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah NUH",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 72",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الجن",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-JINN",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 73",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("المزّمِّل",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-MUZZAMIL",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 74",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("المدّثر",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-MUDDATTIR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 75",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("القيامة",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-QIYAMAH",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 76",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الإنسان",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-INSAN",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 77",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("المرسلات",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-MURSILAAT",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 78",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("النبأ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AN-NABA",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 79",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("النازعات",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AN-NAZIAAT",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 80",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("عبس",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah ABAS",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 81",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("التكوير",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AT-TAKWIR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 82",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الانفطار",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-INFITAR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 83",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("المطففين",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-MUTAFIFEEN",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 84",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الانشقاق",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-INSIQAQ",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 85",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("البروج",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-BURUJ",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 86",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الطارق",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AT-TARIQ",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 87",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الأعلى",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-ALA",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 88",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الغاشية",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-GASIYAH",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 89",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الفجر",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-FAJR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 90",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("البلد",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-BALAD",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 91",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الشمس",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah ACH-SHAMS",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 92",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الليل",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-LAYL",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 93",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الضحى",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AD-DHUHA",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 94",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الشرح",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AS-SARAH",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 95",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("التين",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AT-TIN",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 96",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("العلق",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-ALAQ",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 97",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("القدر",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-QADR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 98",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("البينة",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-BAYYINAH",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 99",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الزلزلة",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AZ-ZALZALAH",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 100",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("العاديات",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-ADIYAAT",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 101",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("القارعة",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-QARIAH",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 102",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("التكاثر",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AT-TAKATUR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 103",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("العصر",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-ASR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 104",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الهُمَزَة",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-HUMAZAH",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 105",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الفيل",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-FEEL",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 106",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("قريش",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-QURAISH",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 107",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الماعون",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-MAOON",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 108",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الكوثر",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-KAUSAR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 109",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الكافرون",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-KAFIROON",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 110",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("النصر",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-NASR",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 111",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("المسد",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-MASAD",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 112",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الإخلاص",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-IKHLAS",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 113",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الفلق",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AL-FALAQ",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah 114",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الناس",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Surah AN-NAAS",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                  ],
                )),
          )),
    );
  }
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
