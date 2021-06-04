import 'package:flutter/material.dart';
import 'package:islam_guide/alquran/chapter1-15.dart';
import 'package:islam_guide/alquran/chapter16-30.dart';
import 'package:islam_guide/alquran/quran_screen/screen.dart';
import 'package:islam_guide/home.dart';

class ChapterAudio extends StatefulWidget {
  @override
  _ChapterAudioState createState() => _ChapterAudioState();
}

class _ChapterAudioState extends State<ChapterAudio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text('Chapters Audio in Arabic',
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
                  child: Column(children: <Widget>[
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
                                builder: (context) => AudioChapter1()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 1",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("الم",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Alif Lam Meem",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter2()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 2",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("سَيَقُولُ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Sayaqool",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter3()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 3",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text(" تِلْكَ الرُّسُلُ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Tilkal Rusool",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter4()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 4",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("لَنْ تَنَالُوا",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Lan Tana Loo",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter5()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 5",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("وَالْمُحْصَنَاتُ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Wal Mohsanat",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter6()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 6",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("لَا يُحِبُّ اللَّهُ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("La Yuhibbullah",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter7()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 7",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("وإِذَا سَمِعُوا",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Wa Iza Samiu",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter8()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 8",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("وَلَوْ أَنَّنَا",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Wa Lau Annana",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter9()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 9",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("قَالَ الْمَلَأُ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Qalal Malao",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter10()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 10",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("وَاعْلَمُوا",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Wa A’lamu",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter11()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 11",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("يَعْتَذِرُونَ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Yatazeroon",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter12()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 12",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("وَمَا مِنْ دَابَّةٍ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Wa Mamin Da’abat",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter13()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 13",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("وَمَا أُبَرِّئُ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Wa Ma Ubrioo",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter14()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 14",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("رُبَمَا",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Rubama",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter15()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 15",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("سُبْحَانَ الَّذِي",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Subhanallazi",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter16()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 16",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("قَالَ أَلَمْ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Qal AlamL",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter17()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 17",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("اقْتَرَبَ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Aqtarabo",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter18()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 18",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("قَدْ أَفْلَحَ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Qadd Aflaha",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter19()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 19",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("وَقَالَ الَّذِينَ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Wa Qalallazina",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter20()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 20",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("أَمَّنْ خَلَقَ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("A’man Khalaq",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter21()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 21",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("اتْلُ مَا أُوحِيَ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Utlu Ma Oohi",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter22()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 22",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("وَمَنْ يَقْنُتْ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Wa Manyaqnut",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter23()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 23",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("وَمَا لِيَ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Wa Mali",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter24()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 24",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("ِفَمَنْ أَظْلَمُ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Faman Azlam",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter25()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 25",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("إِلَيْهِ يُرَدُّ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Ilahe Yuruddo",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter26()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 26",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("حم",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Ha’a Meem",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter27()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 27",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("قَالَ فَمَا خَطْبُكُمْ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Qala Fama Khatbukum",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter28()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 28",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("قَدْ سَمِعَ اللَّهُ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Qadd Sami Allah",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter29()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 29",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("تَبَارَكَ الَّذِي",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Tabarakallazi",
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
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioChapter30()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapter 30",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("عَمَّ يَتَسَاءَلُونَ",
                                  style: TextStyle(
                                      color: Color(hexColor('#d5136d')),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text("Amma Yatasa’aloon",
                                  style: TextStyle(
                                      color: Color(hexColor('#cdcdcd')),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                  ]))),
        ));
  }
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
