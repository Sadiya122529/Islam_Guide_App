import 'package:flutter/material.dart';
import 'package:islam_guide/home.dart';

class TasbeehCounter extends StatefulWidget {
  TasbeehCounter({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TasbeehCounterState createState() => _TasbeehCounterState();
}

class _TasbeehCounterState extends State<TasbeehCounter> {
  var _counter1 = (0);
  var _counter2 = (0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text('Tasbeeh Counter',
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
                child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 200)),
                Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.blueGrey[900], blurRadius: 25)
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blueGrey[900]),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Text(
                            "Counter upto 33",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(hexColor('#cdcdcd'))),
                          ),
                          SizedBox(height: 15),
                          Text("$_counter1",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Color(hexColor('#d5136d')))),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  color: Colors.blueGrey[200],
                                  onPressed: () {
                                    setState(() {
                                      _counter1 >= 33
                                          ? _counter1 = 0
                                          : _counter1 += 1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.blueGrey[800],
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(20)),
                              Container(
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                  color: Colors.blueGrey[200],
                                  onPressed: () {
                                    setState(() {
                                      _counter1 = 0;
                                    });
                                  },
                                  child: Icon(
                                    Icons.refresh,
                                    color: Colors.blueGrey[800],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                Padding(padding: EdgeInsets.only(top: 100)),
                Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.blueGrey[900], blurRadius: 25)
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blueGrey[900]),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Text(
                            "Counter upto 99",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(hexColor('#cdcdcd'))),
                          ),
                          SizedBox(height: 15),
                          Text("$_counter2",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Color(hexColor('#d5136d')))),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  color: Colors.blueGrey[200],
                                  onPressed: () {
                                    setState(() {
                                      _counter2 >= 99
                                          ? _counter2 = 0
                                          : _counter2 += 1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.blueGrey[800],
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(20)),
                              Container(
                                child: MaterialButton(
                                  color: Colors.blueGrey[200],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                  onPressed: () {
                                    setState(() {
                                      _counter2 = 0;
                                    });
                                  },
                                  child: Icon(
                                    Icons.refresh,
                                    color: Colors.blueGrey[800],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            ))));
  }
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
