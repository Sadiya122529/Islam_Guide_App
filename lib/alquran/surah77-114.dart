import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islam_guide/alquran/quran_surah_audio.dart';
import 'package:islam_guide/home.dart';

class AudioSurah77 extends StatefulWidget {
  @override
  _AudioSurah77State createState() => _AudioSurah77State();
}

class _AudioSurah77State extends State<AudioSurah77> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/77-Al-Mursalat1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Mursalat",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("المرسلات",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah78 extends StatefulWidget {
  @override
  _AudioSurah78State createState() => _AudioSurah78State();
}

class _AudioSurah78State extends State<AudioSurah78> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/78-An-Naba1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Naba",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("النبأ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah79 extends StatefulWidget {
  @override
  _AudioSurah79State createState() => _AudioSurah79State();
}

class _AudioSurah79State extends State<AudioSurah79> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/79-An-Naziat1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Naziat",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("النازعات",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah80 extends StatefulWidget {
  @override
  _AudioSurah80State createState() => _AudioSurah80State();
}

class _AudioSurah80State extends State<AudioSurah80> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/80-Abasa1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Abasa",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("عبس",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah81 extends StatefulWidget {
  @override
  _AudioSurah81State createState() => _AudioSurah81State();
}

class _AudioSurah81State extends State<AudioSurah81> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/81-At-Takwir1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Takwir",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("التكوير",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah82 extends StatefulWidget {
  @override
  _AudioSurah82State createState() => _AudioSurah82State();
}

class _AudioSurah82State extends State<AudioSurah82> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/82-Al-Infitar1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Infitar",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الإنفتار",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah83 extends StatefulWidget {
  @override
  _AudioSurah83State createState() => _AudioSurah83State();
}

class _AudioSurah83State extends State<AudioSurah83> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/82-Al-Infitar1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah 	Al-Mutaffifin",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("المطففين",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah84 extends StatefulWidget {
  @override
  _AudioSurah84State createState() => _AudioSurah84State();
}

class _AudioSurah84State extends State<AudioSurah84> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/84-Al-Inshiqaq1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Inshiqaq",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("اﻹنشقاق",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah85 extends StatefulWidget {
  @override
  _AudioSurah85State createState() => _AudioSurah85State();
}

class _AudioSurah85State extends State<AudioSurah85> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/85-Al-Burooj1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Buruj",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("البروج",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah86 extends StatefulWidget {
  @override
  _AudioSurah86State createState() => _AudioSurah86State();
}

class _AudioSurah86State extends State<AudioSurah86> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/86-At-Tariq1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Tariq",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الطارق",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah87 extends StatefulWidget {
  @override
  _AudioSurah87State createState() => _AudioSurah87State();
}

class _AudioSurah87State extends State<AudioSurah87> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/87-Al-Ala1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Aala",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الأعلى",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah88 extends StatefulWidget {
  @override
  _AudioSurah88State createState() => _AudioSurah88State();
}

class _AudioSurah88State extends State<AudioSurah88> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/88-Al-Ghashiya1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Ghashiyah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الغاشية",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah89 extends StatefulWidget {
  @override
  _AudioSurah89State createState() => _AudioSurah89State();
}

class _AudioSurah89State extends State<AudioSurah89> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/89-Al-Fajr1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Fajr",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الفجر",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah90 extends StatefulWidget {
  @override
  _AudioSurah90State createState() => _AudioSurah90State();
}

class _AudioSurah90State extends State<AudioSurah90> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/90-Al-Balad1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Balad",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("البلد",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah91 extends StatefulWidget {
  @override
  _AudioSurah91State createState() => _AudioSurah91State();
}

class _AudioSurah91State extends State<AudioSurah91> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/91-Ash-Shams1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Shams",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الشمس",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah92 extends StatefulWidget {
  @override
  _AudioSurah92State createState() => _AudioSurah92State();
}

class _AudioSurah92State extends State<AudioSurah92> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/92-Al-Lail1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Layl",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الليل",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah93 extends StatefulWidget {
  @override
  _AudioSurah93State createState() => _AudioSurah93State();
}

class _AudioSurah93State extends State<AudioSurah93> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/93-Ad-Dhuha1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Duha",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الضحى",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah94 extends StatefulWidget {
  @override
  _AudioSurah94State createState() => _AudioSurah94State();
}

class _AudioSurah94State extends State<AudioSurah94> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/94-Al-Inshirah1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Inshirah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("اﻹﻧﺸﺮﺡ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah95 extends StatefulWidget {
  @override
  _AudioSurah95State createState() => _AudioSurah95State();
}

class _AudioSurah95State extends State<AudioSurah95> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/95-At-Teen.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Tin",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("التين",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah96 extends StatefulWidget {
  @override
  _AudioSurah96State createState() => _AudioSurah96State();
}

class _AudioSurah96State extends State<AudioSurah96> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/96-Al-Alaq1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Alaq",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("العلق",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah97 extends StatefulWidget {
  @override
  _AudioSurah97State createState() => _AudioSurah97State();
}

class _AudioSurah97State extends State<AudioSurah97> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/97-Al-Qadr1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Qadr",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("القدر",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah98 extends StatefulWidget {
  @override
  _AudioSurah98State createState() => _AudioSurah98State();
}

class _AudioSurah98State extends State<AudioSurah98> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/98-Al-Bayyina1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Bayyinah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("البينة",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah99 extends StatefulWidget {
  @override
  _AudioSurah99State createState() => _AudioSurah99State();
}

class _AudioSurah99State extends State<AudioSurah99> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/99-Az-Zalzala1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Zalazalah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الزلزلة",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah100 extends StatefulWidget {
  @override
  _AudioSurah100State createState() => _AudioSurah100State();
}

class _AudioSurah100State extends State<AudioSurah100> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/100-Al-Adiyat1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Adiyat",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("العاديات",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah101 extends StatefulWidget {
  @override
  _AudioSurah101State createState() => _AudioSurah101State();
}

class _AudioSurah101State extends State<AudioSurah101> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/101-Al-Qariyah.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Qariah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("القارعة",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah102 extends StatefulWidget {
  @override
  _AudioSurah102State createState() => _AudioSurah102State();
}

class _AudioSurah102State extends State<AudioSurah102> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/102-At-Takathur1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Takasur",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("التكاثر",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah103 extends StatefulWidget {
  @override
  _AudioSurah103State createState() => _AudioSurah103State();
}

class _AudioSurah103State extends State<AudioSurah103> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/103-Al-Asr1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Asr",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("العصر",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah104 extends StatefulWidget {
  @override
  _AudioSurah104State createState() => _AudioSurah104State();
}

class _AudioSurah104State extends State<AudioSurah104> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/104-Al-Humaza1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Humazah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الهمزة",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah105 extends StatefulWidget {
  @override
  _AudioSurah105State createState() => _AudioSurah105State();
}

class _AudioSurah105State extends State<AudioSurah105> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/105-Al-Feel.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Fil",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الفيل",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah106 extends StatefulWidget {
  @override
  _AudioSurah106State createState() => _AudioSurah106State();
}

class _AudioSurah106State extends State<AudioSurah106> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/106-Quraish1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Quraish",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("قريش",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah107 extends StatefulWidget {
  @override
  _AudioSurah107State createState() => _AudioSurah107State();
}

class _AudioSurah107State extends State<AudioSurah107> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/107-Al-Maun1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Maun",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الماعون",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah108 extends StatefulWidget {
  @override
  _AudioSurah108State createState() => _AudioSurah108State();
}

class _AudioSurah108State extends State<AudioSurah108> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/108-Al-Kauther1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Kauthar",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الكوثر",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah109 extends StatefulWidget {
  @override
  _AudioSurah109State createState() => _AudioSurah109State();
}

class _AudioSurah109State extends State<AudioSurah109> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/109-Al-Kafiroon1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Kafirun",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الكافرون",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah110 extends StatefulWidget {
  @override
  _AudioSurah110State createState() => _AudioSurah110State();
}

class _AudioSurah110State extends State<AudioSurah110> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/110-An-Nasr1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Nasr",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("النصر",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah111 extends StatefulWidget {
  @override
  _AudioSurah111State createState() => _AudioSurah111State();
}

class _AudioSurah111State extends State<AudioSurah111> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/111-Al-Masadd1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Masad",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("المسد",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah112 extends StatefulWidget {
  @override
  _AudioSurah112State createState() => _AudioSurah112State();
}

class _AudioSurah112State extends State<AudioSurah112> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/112-Al-Ikhlas1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Ikhlas",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الإخلاص",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah113 extends StatefulWidget {
  @override
  _AudioSurah113State createState() => _AudioSurah113State();
}

class _AudioSurah113State extends State<AudioSurah113> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/113-Al-Falaq1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Falaq",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الفلق",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

class AudioSurah114 extends StatefulWidget {
  @override
  _AudioSurah114State createState() => _AudioSurah114State();
}

class _AudioSurah114State extends State<AudioSurah114> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/114-An-Nas1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Color(hexColor('#d5136d')),
          inactiveColor: Color(hexColor('#cdcdcd')),
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    //cache = AudioCache(fixedPlayer: _player);

    // ignore: deprecated_member_use
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    // ignore: deprecated_member_use
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (playing) {
                  _player.pause();
                  setState(() {
                    playBtn = Icons.play_arrow;
                    playing = false;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahAudio()),
                );
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  if (playing) {
                    _player.pause();
                    setState(() {
                      playBtn = Icons.play_arrow;
                      playing = false;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
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
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/audio.jpg"),
                            fit: BoxFit.cover,
                          )),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text("Surah Al-Nas",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الناس",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 175,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "${position.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                  slider(),
                                  Text(
                                      "${musicLength.inHours}:${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(hexColor('#cdcdcd')))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 75,
                                  color: Color(hexColor('#d5136d')),
                                  onPressed: () {
                                    if (!playing) {
                                      _player.play(url);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )))));
  }
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
