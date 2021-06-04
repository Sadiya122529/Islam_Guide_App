import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam_guide/alquran/quran_arabic.dart';
import 'package:islam_guide/alquran/quran_chapter_audio.dart';
import 'package:islam_guide/alquran/quran_english.dart';
import 'package:islam_guide/alquran/quran_kids.dart';
import 'package:islam_guide/alquran/quran_surah_audio.dart';
import 'package:islam_guide/alquran/quran_urdu.dart';
import 'package:islam_guide/home.dart';
import 'package:path_provider/path_provider.dart';

class AlQuran extends StatefulWidget {
  @override
  _AlQuranState createState() => _AlQuranState();
}

class _AlQuranState extends State<AlQuran> {
  String assetPDFPath1 = "assets/files/Holy-Quran-in-Arabic-Language.pdf";
  String assetPDFPath2 = "assets/files/quran urdu.pdf";
  String assetPDFPath3 = "assets/files/quran english.pdf";
  String assetPDFPath4 = "assets/files/yassarnal quran.pdf";

  @override
  void initState() {
    super.initState();

    getFileFromAsset1("assets/files/Holy-Quran-in-Arabic-Language.pdf")
        .then((f) {
      setState(() {
        assetPDFPath1 = f.path;
        print(assetPDFPath1);
      });
    });

    getFileFromAsset2("assets/files/quran urdu.pdf").then((f) {
      setState(() {
        assetPDFPath2 = f.path;
        print(assetPDFPath2);
      });
    });

    getFileFromAsset3("assets/files/quran english.pdf").then((f) {
      setState(() {
        assetPDFPath3 = f.path;
        print(assetPDFPath3);
      });
    });

    getFileFromAsset4("assets/files/yassarnal quran.pdf").then((f) {
      setState(() {
        assetPDFPath4 = f.path;
        print(assetPDFPath4);
      });
    });
  }

  Future<File> getFileFromAsset1(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();

      File file = File("${dir.path}/Holy-Quran-in-Arabic-Language.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Oops! Something went wrong");
    }
  }

  Future<File> getFileFromAsset2(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();

      File file = File("${dir.path}/quran urdu.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Oops! Something went wrong");
    }
  }

  Future<File> getFileFromAsset3(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();

      File file = File("${dir.path}/quran english.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Oops! Something went wrong");
    }
  }

  Future<File> getFileFromAsset4(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();

      File file = File("${dir.path}/yassarnal quran.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Oops! Something went wrong");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text('Al - Quran',
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
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blueGrey[900],
                        ),
                        child: MaterialButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PdfViewPage1(path: assetPDFPath1)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Al - Quran",
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
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blueGrey[900],
                        ),
                        child: MaterialButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PdfViewPage2(path: assetPDFPath2)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Urdu Translation",
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
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blueGrey[900],
                        ),
                        child: MaterialButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PdfViewPage3(path: assetPDFPath3)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("English Translation",
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
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blueGrey[900],
                        ),
                        child: MaterialButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChapterAudio()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Chapters Audio",
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
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blueGrey[900],
                        ),
                        child: MaterialButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SurahAudio()),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Surah wise Translation",
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
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blueGrey[900],
                        ),
                        child: MaterialButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PdfViewPage4(path: assetPDFPath4)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Yassarnal Quran for Kids",
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
