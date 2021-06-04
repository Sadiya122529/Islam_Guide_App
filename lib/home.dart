import 'package:flutter/material.dart';
import 'package:islam_guide/allah%20names/names.dart';
import 'package:islam_guide/alquran/quran_screen/screen.dart';
import 'package:islam_guide/duas/dua_screen.dart';
import 'package:islam_guide/kalima/kalima_screen.dart';
import 'package:islam_guide/namaz%20time/dropdown.dart';
import 'package:islam_guide/shahada/shahada.dart';
import 'package:islam_guide/tasbeeh/counter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(hexColor('#BBD2C5')), Color(hexColor('#536976'))]),
      ),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: 250,
            floating: true,
            pinned: true,
            flexibleSpace: Opacity(
              opacity: 0.5,
              child: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/home.jpg",
                  fit: BoxFit.cover,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                centerTitle: true,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.blueGrey[900],
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AlQuran()),
                            );
                          },
                          child: Center(
                            child: Stack(
                              children: <Widget>[
                                Center(
                                    child: Image(
                                        height: 150,
                                        width: 150,
                                        image: AssetImage(
                                            "assets/images/logos/quran.png"))),
                                Container(
                                    margin: EdgeInsets.only(top: 125),
                                    child: Center(
                                        child: Text("Al-Quran",
                                            style: TextStyle(
                                                color:
                                                    Color(hexColor('#cdcdcd')),
                                                fontSize: 18))))
                              ],
                            ),
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.blueGrey[900],
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DuaScreen()),
                            );
                          },
                          child: Center(
                            child: Stack(
                              children: <Widget>[
                                Center(
                                    child: Image(
                                        height: 100,
                                        width: 100,
                                        image: AssetImage(
                                          "assets/images/logos/dua.png",
                                        ))),
                                Container(
                                    margin: EdgeInsets.only(top: 125),
                                    child: Center(
                                        child: Text("Ramadan Duas",
                                            style: TextStyle(
                                                color:
                                                    Color(hexColor('#cdcdcd')),
                                                fontSize: 18))))
                              ],
                            ),
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.blueGrey[900],
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DropDown()),
                            );
                          },
                          child: Center(
                            child: Stack(
                              children: <Widget>[
                                Center(
                                    child: Image(
                                        height: 80,
                                        width: 80,
                                        image: AssetImage(
                                            "assets/images/logos/namaztime.png"))),
                                Container(
                                    margin: EdgeInsets.only(top: 125),
                                    child: Center(
                                        child: Text("Namaz Timings",
                                            style: TextStyle(
                                                color:
                                                    Color(hexColor('#cdcdcd')),
                                                fontSize: 18))))
                              ],
                            ),
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.blueGrey[900],
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TasbeehCounter()),
                            );
                          },
                          child: Center(
                            child: Stack(
                              children: <Widget>[
                                Center(
                                    child: Image(
                                        height: 80,
                                        width: 80,
                                        image: AssetImage(
                                            "assets/images/logos/tasbih.png"))),
                                Container(
                                    margin: EdgeInsets.only(top: 125),
                                    child: Center(
                                        child: Text("Tasbeeh",
                                            style: TextStyle(
                                                color:
                                                    Color(hexColor('#cdcdcd')),
                                                fontSize: 18))))
                              ],
                            ),
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.blueGrey[900],
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KalimaScreen()),
                            );
                          },
                          child: Center(
                            child: Stack(
                              children: <Widget>[
                                Center(
                                    child: Image(
                                        height: 75,
                                        width: 75,
                                        image: AssetImage(
                                            "assets/images/logos/kalima.png"))),
                                Container(
                                    margin: EdgeInsets.only(top: 125),
                                    child: Center(
                                        child: Text("The 6 Kalimas",
                                            style: TextStyle(
                                                color:
                                                    Color(hexColor('#cdcdcd')),
                                                fontSize: 18))))
                              ],
                            ),
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.blueGrey[900],
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllahName()),
                            );
                          },
                          child: Center(
                            child: Stack(
                              children: <Widget>[
                                Center(
                                    child: Image(
                                        height: 80,
                                        width: 80,
                                        image: AssetImage(
                                            "assets/images/logos/allah.png"))),
                                Container(
                                    margin: EdgeInsets.only(top: 125),
                                    child: Center(
                                        child: Text("99 Names of Allah",
                                            style: TextStyle(
                                                color:
                                                    Color(hexColor('#cdcdcd')),
                                                fontSize: 18))))
                              ],
                            ),
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.blueGrey[900],
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShahadatScreen()),
                            );
                          },
                          child: Center(
                            child: Stack(
                              children: <Widget>[
                                Center(
                                    child: Image(
                                        height: 80,
                                        width: 80,
                                        image: AssetImage(
                                            "assets/images/logos/shahada.png"))),
                                Container(
                                    margin: EdgeInsets.only(top: 125),
                                    child: Center(
                                        child: Text("Shahadat",
                                            style: TextStyle(
                                                color:
                                                    Color(hexColor('#cdcdcd')),
                                                fontSize: 18))))
                              ],
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    ));
  }
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
