import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islam_guide/home.dart';

class AllahName extends StatefulWidget {
  @override
  _AllahNameState createState() => _AllahNameState();
}

class _AllahNameState extends State<AllahName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text('Names of Allah',
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 75),
              ),
              Expanded(
                child: PageViewWidget(),
              )
            ],
          ),
        ));
  }
}

class PageViewWidget extends StatefulWidget {
  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  List<NameImage> _list = NameImage.generate();

  PageController pageController;

  double viewportFraction = 0.8;

  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController =
        PageController(initialPage: 0, viewportFraction: viewportFraction)
          ..addListener(() {
            setState(() {
              pageOffset = pageController.page;
            });
          });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemBuilder: (context, index) {
        double scale = max(viewportFraction,
            (1 - (pageOffset - index).abs()) + viewportFraction);

        double angle = (pageOffset - index).abs();

        if (angle > 0.5) {
          angle = 1 - angle;
        }

        return Container(
          height: 370,
          width: 350,
          padding: EdgeInsets.only(
              right: 10, left: 20, top: 175 - scale * 25, bottom: 205),
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(angle),
            alignment: Alignment.center,
            child: Material(
              elevation: 2,
              child: Image.asset(
                _list[index].name,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
                alignment: Alignment((pageOffset - index).abs() * 0.5, 0),
              ),
            ),
          ),
        );
      },
      itemCount: _list.length,
    );
  }
}

class NameImage {
  String name;

  NameImage(this.name);

  static List<NameImage> generate() {
    return [
      NameImage("assets/images/names/name1.png"),
      NameImage("assets/images/names/name2.png"),
      NameImage("assets/images/names/name3.png"),
      NameImage("assets/images/names/name4.png"),
      NameImage("assets/images/names/name5.png"),
      NameImage("assets/images/names/name6.png"),
      NameImage("assets/images/names/name7.png"),
      NameImage("assets/images/names/name8.png"),
      NameImage("assets/images/names/name9.png"),
      NameImage("assets/images/names/name10.png"),
      NameImage("assets/images/names/name11.png"),
      NameImage("assets/images/names/name12.png"),
      NameImage("assets/images/names/name13.png"),
      NameImage("assets/images/names/name14.png"),
      NameImage("assets/images/names/name15.png"),
      NameImage("assets/images/names/name16.png"),
      NameImage("assets/images/names/name17.png"),
      NameImage("assets/images/names/name18.png"),
      NameImage("assets/images/names/name19.png"),
      NameImage("assets/images/names/name20.png"),
      NameImage("assets/images/names/name21.png"),
      NameImage("assets/images/names/name22.png"),
      NameImage("assets/images/names/name23.png"),
      NameImage("assets/images/names/name24.png"),
      NameImage("assets/images/names/name25.png"),
      NameImage("assets/images/names/name26.png"),
      NameImage("assets/images/names/name27.png"),
      NameImage("assets/images/names/name28.png"),
      NameImage("assets/images/names/name29.png"),
      NameImage("assets/images/names/name30.png"),
      NameImage("assets/images/names/name31.png"),
      NameImage("assets/images/names/name32.png"),
      NameImage("assets/images/names/name33.png"),
      NameImage("assets/images/names/name34.png"),
      NameImage("assets/images/names/name35.png"),
      NameImage("assets/images/names/name36.png"),
      NameImage("assets/images/names/name37.png"),
      NameImage("assets/images/names/name38.png"),
      NameImage("assets/images/names/name39.png"),
      NameImage("assets/images/names/name40.png"),
      NameImage("assets/images/names/name41.png"),
      NameImage("assets/images/names/name42.png"),
      NameImage("assets/images/names/name43.png"),
      NameImage("assets/images/names/name44.png"),
      NameImage("assets/images/names/name45.png"),
      NameImage("assets/images/names/name46.png"),
      NameImage("assets/images/names/name47.png"),
      NameImage("assets/images/names/name48.png"),
      NameImage("assets/images/names/name49.png"),
      NameImage("assets/images/names/name50.png"),
      NameImage("assets/images/names/name51.png"),
      NameImage("assets/images/names/name52.png"),
      NameImage("assets/images/names/name53.png"),
      NameImage("assets/images/names/name54.png"),
      NameImage("assets/images/names/name55.png"),
      NameImage("assets/images/names/name56.png"),
      NameImage("assets/images/names/name57.png"),
      NameImage("assets/images/names/name58.png"),
      NameImage("assets/images/names/name59.png"),
      NameImage("assets/images/names/name60.png"),
      NameImage("assets/images/names/name61.png"),
      NameImage("assets/images/names/name62.png"),
      NameImage("assets/images/names/name63.png"),
      NameImage("assets/images/names/name64.png"),
      NameImage("assets/images/names/name65.png"),
      NameImage("assets/images/names/name66.png"),
      NameImage("assets/images/names/name67.png"),
      NameImage("assets/images/names/name68.png"),
      NameImage("assets/images/names/name69.png"),
      NameImage("assets/images/names/name70.png"),
      NameImage("assets/images/names/name71.png"),
      NameImage("assets/images/names/name72.png"),
      NameImage("assets/images/names/name73.png"),
      NameImage("assets/images/names/name74.png"),
      NameImage("assets/images/names/name75.png"),
      NameImage("assets/images/names/name76.png"),
      NameImage("assets/images/names/name77.png"),
      NameImage("assets/images/names/name78.png"),
      NameImage("assets/images/names/name79.png"),
      NameImage("assets/images/names/name80.png"),
      NameImage("assets/images/names/name81.png"),
      NameImage("assets/images/names/name82.png"),
      NameImage("assets/images/names/name83.png"),
      NameImage("assets/images/names/name84.png"),
      NameImage("assets/images/names/name85.png"),
      NameImage("assets/images/names/name86.png"),
      NameImage("assets/images/names/name87.png"),
      NameImage("assets/images/names/name88.png"),
      NameImage("assets/images/names/name89.png"),
      NameImage("assets/images/names/name90.png"),
      NameImage("assets/images/names/name91.png"),
      NameImage("assets/images/names/name92.png"),
      NameImage("assets/images/names/name93.png"),
      NameImage("assets/images/names/name94.png"),
      NameImage("assets/images/names/name95.png"),
      NameImage("assets/images/names/name96.png"),
      NameImage("assets/images/names/name97.png"),
      NameImage("assets/images/names/name98.png"),
      NameImage("assets/images/names/name99.png"),
    ];
  }
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
