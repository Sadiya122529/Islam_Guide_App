import 'package:flutter/material.dart';
import 'package:islam_guide/home.dart';
import 'package:islam_guide/kalima/kalima_screen.dart';

class KalimaSix extends StatefulWidget {
  @override
  _KalimaSixState createState() => _KalimaSixState();
}

class _KalimaSixState extends State<KalimaSix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text('Kalima Radde Kufr',
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
                    height: 1650,
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
                              child: Text("كلمة رَدّْ اَلْكُفْرْ‎",
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
                                  "اَللّٰهُمَّ اِنِّیْٓ اَعُوْذُ بِكَ مِنْ اَنْ اُشْرِكَ بِكَ شَيْئًا وَّاَنَآ اَعْلَمُ بِهٖ وَ اَسْتَغْفِرُكَ لِمَا لَآ اَعْلَمُ بِهٖ تُبْتُ عَنْهُ وَ تَبَرَّأْتُ مِنَ الْكُفْرِ وَ الشِّرْكِ وَ الْكِذْبِ وَ الْغِيْبَةِ وَ الْبِدْعَةِ وَ النَّمِيْمَةِ وَ الْفَوَاحِشِ وَ الْبُهْتَانِ وَ الْمَعَاصِىْ كُلِِّهَا وَ اَسْلَمْتُ وَ اَقُوْلُ لَآ اِلٰهَ اِلَّا اللهُ مُحَمَّدٌ رَّسُوْلُ اللهِؕ",
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
                                  "Allahumma Inne A’udhu-bika Min An Ushrika Bika Shay-awn Wa-ana A’lamu Bihee Wa-astaghfiruka Limaa Laaa A’lamu Bihee Tubtu ‘Anhu Wata-barraatu Mina-l Kufri Wash-shirki Wal-kidhbi Wal-gheebati Wal-bid’ati Wan-nameemati Wal-fawahishi Wal-buhtaani Wal-m’aasi Kulli-haa Wa-Aslamtu Wa-aqoolu Laaa Ilaaha Illa-llaahu Muhammadur Rasulullah",
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
                                "O Allah! I seek refuge in You from that I should ascribe any partner with You knowingly. I seek Your forgiveness for the sin of which I have no knowledge. I repent from it. And becoming disgusted of disbelief and idolatry, lying and backbiting, innovation and slander, lewdness and abomination and all other acts of disobedience, I submit to Your will. I believe and I declare that there is none worthy of worship except Allah and Muhammad is the Messenger of Allah",
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
