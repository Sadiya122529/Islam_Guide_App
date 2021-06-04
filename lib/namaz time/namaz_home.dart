import 'package:islam_guide/home.dart';
import 'package:islam_guide/namaz%20time/bloc/praybloc.dart';
import 'package:islam_guide/namaz%20time/model/datetime_model.dart';
import 'package:islam_guide/namaz%20time/ui/detail_main.dart';
import 'package:islam_guide/namaz%20time/utils/string_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart' show DateFormat;

import 'model/main_model.dart';

class Home extends StatefulWidget {
  final String cityname;

  Home({Key key, @required this.cityname}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var dateNow = DateTime.now();
  var formaterDate = DateFormat('yyyy MM dd');
  String subuhTime;
  String maghribTime;

  @override
  void initState() {
    super.initState();
    String date = DateFormat('yyyy-MM-dd').format(dateNow);
    prayBloc.fetchPrayTime(city: widget.cityname, date: date);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text('Calendar',
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
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 350,
                    width: double.infinity,
                    child: _sectionImage(),
                  ),
                  Positioned(
                    bottom: 8.0,
                    left: 15.0,
                    right: 15.0,
                    child: Container(
                      height: 80,
                      width: double.maxFinite,
                      child: StreamBuilder(
                        stream: prayBloc.praytime,
                        builder: (context, AsyncSnapshot<MainModel> snapshot) {
                          if (snapshot.hasData) {
                            var data = snapshot.data.results.datetime;
                            return _sectionTime(data);
                          } else if (snapshot.hasError) {
                            return Text(snapshot.error.toString());
                          }
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              _sectionDate(),
            ],
          ),
        ),
      ),
    );
  }

  _sectionImage() {
    return Image.asset(
      StringImages.image_namaz,
    );
  }

  _sectionTime(List<DateTimeModel> data) {
    return Card(
        color: Colors.blueGrey[800].withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(hexColor('#cdcdcd')), width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Card(
                  color: Colors.blueGrey[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Imsak",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          data[0].times.Imsak,
                          style: TextStyle(
                            color: Colors.blueGrey[100],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.blueGrey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Maghrib",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          data[0].times.Maghrib,
                          style: TextStyle(
                            color: Colors.blueGrey[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  _sectionDate() {
    return Card(
      shadowColor: Colors.black87,
      color: Colors.blueGrey[900],
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color(hexColor('#cdcdcd')), width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: CalendarCarousel(
        weekendTextStyle: TextStyle(color: Colors.red),
        height: 380.0,
        isScrollable: true,
        todayButtonColor: Colors.blueGrey[600],
        selectedDayTextStyle: TextStyle(
          color: Colors.blueGrey[800],
        ),
        minSelectedDate: dateNow.subtract(Duration(days: 360)),
        maxSelectedDate: dateNow.add(Duration(days: 360)),
        showOnlyCurrentMonthDate: false,
        weekFormat: false,
        headerTextStyle: TextStyle(
          color: Color(hexColor('#cdcdcd')),
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
        prevDaysTextStyle: TextStyle(color: Colors.grey),
        nextDaysTextStyle: TextStyle(color: Colors.grey),
        daysTextStyle: TextStyle(color: Colors.white),
        showHeaderButton: true,
        iconColor: Colors.white,
        onDayPressed: (DateTime date, List<Event> events) {
          String chooseDate = DateFormat('yyyy-MM-dd').format(date);
          String cn = widget.cityname;
          _navigateToDetail(context, chooseDate, cn);
        },
      ),
    );
  }

  _navigateToDetail(context, String chooseDate, String cn) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailMain(chooseDate, cn)),
    );
  }
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
