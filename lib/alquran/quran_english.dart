import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:islam_guide/alquran/quran_screen/screen.dart';
import 'package:islam_guide/home.dart';

class PdfViewPage3 extends StatefulWidget {
  final String path;

  const PdfViewPage3({Key key, this.path}) : super(key: key);
  @override
  _PdfViewPage3State createState() => _PdfViewPage3State();
}

class _PdfViewPage3State extends State<PdfViewPage3> {
  bool pdfReady = false;
  int _totalPages = 0;
  int _currentPage = 0;
  PDFViewController _pdfViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Quran with English translation',
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
              colors: [Color(hexColor('#BBD2C5')), Color(hexColor('#536976'))]),
        ),
        child: SafeArea(
          child: Container(
            child: Stack(
              children: <Widget>[
                PDFView(
                  filePath: widget.path,
                  autoSpacing: true,
                  enableSwipe: true,
                  pageSnap: true,
                  swipeHorizontal: true,
                  onError: (e) {
                    print(e);
                  },
                  onRender: (_pages) {
                    setState(() {
                      _totalPages = _pages;
                      pdfReady = true;
                    });
                  },
                  onViewCreated: (PDFViewController vc) {
                    _pdfViewController = vc;
                  },
                  onPageChanged: (int page, int total) {
                    setState(() {});
                  },
                  onPageError: (page, e) {},
                ),
                !pdfReady
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Offstage()
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _currentPage > 0
              ? FloatingActionButton.extended(
                  backgroundColor: Colors.black,
                  label: Text("Go To ${_currentPage - 1}"),
                  onPressed: () {
                    _currentPage -= 1;
                    _pdfViewController.setPage(_currentPage);
                  },
                )
              : Offstage(),
          Padding(padding: EdgeInsets.all(5)),
          _currentPage < _totalPages
              ? FloatingActionButton.extended(
                  backgroundColor: Colors.black,
                  label: Text("Go To ${_currentPage + 1}"),
                  onPressed: () {
                    _currentPage += 1;
                    _pdfViewController.setPage(_currentPage);
                  },
                )
              : Offstage(),
        ],
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
