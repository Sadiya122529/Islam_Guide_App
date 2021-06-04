import 'package:islam_guide/home.dart';
import 'package:islam_guide/namaz%20time/namaz_home.dart';
import 'package:islam_guide/namaz%20time/bloc/praybloc.dart';
import 'package:islam_guide/namaz%20time/model/main_model.dart';
import 'package:islam_guide/namaz%20time/model/time_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

// ignore: must_be_immutable
class DetailMain extends StatefulWidget {
  String date;
  String cityname;

  DetailMain(this.date, this.cityname);

  @override
  _DetailMainState createState() => _DetailMainState(date, cityname);
}

class _DetailMainState extends State<DetailMain> {
  String date;
  String cityname;

  _DetailMainState(this.date, this.cityname);

  @override
  void initState() {
    super.initState();
    prayBloc.fetchPrayTime(city: cityname, date: date);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Color(hexColor('#cdcdcd')),
            onPressed: () => Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Home(cityname: '',)),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Color(hexColor('#cdcdcd')),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              ),
            )
          ],
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.blueGrey[900]),
          child: Column(
            children: <Widget>[
              _sectionCalender(),
              Expanded(
                flex: 1,
                child: Card(
                  color: Colors.blueGrey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 16, left: 10, right: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _sectionTrivia(),
                        Container(
                          margin:
                              EdgeInsets.only(top: 20, left: 10, bottom: 15),
                          child: Text(
                            "Schedule",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey[800],
                                fontSize: 20),
                          ),
                        ),
                        StreamBuilder(
                          stream: prayBloc.praytime,
                          builder:
                              (context, AsyncSnapshot<MainModel> snapshot) {
                            if (snapshot.hasData) {
                              var data =
                                  snapshot.data.results.datetime[0].times;
                              return _sectionPrayTime(data);
                            } else if (snapshot.hasError) {
                              return Text(snapshot.error.toString());
                            }
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _sectionCalender() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: CalendarCarousel<Event>(
        weekendTextStyle: TextStyle(
          color: Colors.red,
        ),
        daysTextStyle: TextStyle(
          color: Colors.red,
        ),
        thisMonthDayBorderColor: Colors.blueGrey[200],
        showHeader: true,
        weekFormat: true,
        height: 145.0,
        showIconBehindDayText: true,
        customGridViewPhysics: NeverScrollableScrollPhysics(),
        markedDateShowIcon: true,
        selectedDayTextStyle: TextStyle(
          color: Color(hexColor('#cdcdcd')),
        ),
        todayButtonColor: Colors.blueGrey[600],
        todayBorderColor: Colors.blueGrey[600],
        markedDateMoreShowTotal: true,
        headerTextStyle: TextStyle(
            color: Color(hexColor('#cdcdcd')),
            fontSize: 20,
            fontWeight: FontWeight.bold),
        isScrollable: false,
        showHeaderButton: false,
        weekdayTextStyle: TextStyle(color: Color(hexColor('#cdcdcd'))),
        selectedDateTime: DateTime.parse(date),
      ),
    );
  }

  _sectionTrivia() {
    return Card(
      color: Colors.blueGrey[800],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Are you have a fasting today?",
              style: TextStyle(color: Color(hexColor('#cdcdcd')), fontSize: 20),
            ),
            Container(
                width: 40,
                height: 40,
                child: Icon(
                  Icons.check,
                  color: Colors.blueGrey[900],
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(hexColor('#cdcdcd'))))
          ],
        ),
      ),
    );
  }

  _sectionPrayTime(TimeModel data) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          _cardPrayTime("Imsak", data.Imsak),
          _cardPrayTime("Sunrise", data.Sunrise),
          _cardPrayTime("Fajr", data.Fajr),
          _cardPrayTime("Dhuhr", data.Dhuhr),
          _cardPrayTime("Asr", data.Asr),
          _cardPrayTime("Sunset", data.Sunset),
          _cardPrayTime("Maghrib", data.Maghrib),
          _cardPrayTime("Isha", data.Isha),
          _cardPrayTime("Midnight", data.Midnight),
        ],
      ),
    );
  }

  _cardPrayTime(String key, String value) {
    return Container(
      width: double.infinity,
      child: Card(
        color: Colors.blueGrey[800],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                key,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  value,
                  style: TextStyle(color: Color(hexColor('#cdcdcd'))),
                ),
              )
            ],
          ),
        ),
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
