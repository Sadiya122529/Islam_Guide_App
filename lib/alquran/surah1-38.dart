import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islam_guide/alquran/quran_surah_audio.dart';
import 'package:islam_guide/home.dart';

class AudioSurah1 extends StatefulWidget {
  @override
  _AudioSurah1State createState() => _AudioSurah1State();
}

class _AudioSurah1State extends State<AudioSurah1> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/01-Al-Fatiha1.mp3';

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
                      child: Text("Surah Al-Fatiha",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الفاتحة",
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

class AudioSurah2 extends StatefulWidget {
  @override
  _AudioSurah2State createState() => _AudioSurah2State();
}

class _AudioSurah2State extends State<AudioSurah2> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/02-Al-Baqara1.mp3';

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
                      child: Text("Surah Al-Baqarah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("اﻟﺒﻘﺮﺓ",
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

class AudioSurah3 extends StatefulWidget {
  @override
  _AudioSurah3State createState() => _AudioSurah3State();
}

class _AudioSurah3State extends State<AudioSurah3> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/03-Aal-E-Imran1.mp3';

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
                      child: Text("Surah Al-e-Imran",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("اۤل عمران",
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

class AudioSurah4 extends StatefulWidget {
  @override
  _AudioSurah4State createState() => _AudioSurah4State();
}

class _AudioSurah4State extends State<AudioSurah4> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/04-An-Nisa1.mp3';

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
                      child: Text("Surah An-Nisa",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("اﻟﻨﺴﺄ",
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

class AudioSurah5 extends StatefulWidget {
  @override
  _AudioSurah5State createState() => _AudioSurah5State();
}

class _AudioSurah5State extends State<AudioSurah5> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/05-Al-Maeda1.mp3';

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
                      child: Text("Surah Al-Maidah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("المائدة",
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

class AudioSurah6 extends StatefulWidget {
  @override
  _AudioSurah6State createState() => _AudioSurah6State();
}

class _AudioSurah6State extends State<AudioSurah6> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/06-Al-Anaam1.mp3';

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
                      child: Text("Surah Al-Anam",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الأنعام",
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

class AudioSurah7 extends StatefulWidget {
  @override
  _AudioSurah7State createState() => _AudioSurah7State();
}

class _AudioSurah7State extends State<AudioSurah7> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/07-Al-Araf1.mp3';

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
                      child: Text("Surah Al-Araf",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("	الأعراف",
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

class AudioSurah8 extends StatefulWidget {
  @override
  _AudioSurah8State createState() => _AudioSurah8State();
}

class _AudioSurah8State extends State<AudioSurah8> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/08-Al-Anfal1.mp3';

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
                      child: Text("Surah Al-Anfal",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الأنفال",
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

class AudioSurah9 extends StatefulWidget {
  @override
  _AudioSurah9State createState() => _AudioSurah9State();
}

class _AudioSurah9State extends State<AudioSurah9> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/09-At-Tawba1.mp3';

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
                      child: Text("Surah At-Tawbah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("التوبة",
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

class AudioSurah10 extends StatefulWidget {
  @override
  _AudioSurah10State createState() => _AudioSurah10State();
}

class _AudioSurah10State extends State<AudioSurah10> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/10-Yunus1.mp3';

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
                      child: Text("Surah Yunus",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("يونس",
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

class AudioSurah11 extends StatefulWidget {
  @override
  _AudioSurah11State createState() => _AudioSurah11State();
}

class _AudioSurah11State extends State<AudioSurah11> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/11-Hud1.mp3';

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
                      child: Text("Surah Hud",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("هود",
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

class AudioSurah12 extends StatefulWidget {
  @override
  _AudioSurah12State createState() => _AudioSurah12State();
}

class _AudioSurah12State extends State<AudioSurah12> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/12-Yusuf1.mp3';

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
                padding: EdgeInsets.only(top: 150),
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
                      child: Text("Surah Yusuf",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("يوسف",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 200,
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

class AudioSurah13 extends StatefulWidget {
  @override
  _AudioSurah13State createState() => _AudioSurah13State();
}

class _AudioSurah13State extends State<AudioSurah13> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/13-Ar-Rad1.mp3';

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
                      child: Text("Surah Ar-Rad",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الرعد",
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

class AudioSurah14 extends StatefulWidget {
  @override
  _AudioSurah14State createState() => _AudioSurah14State();
}

class _AudioSurah14State extends State<AudioSurah14> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/14-Ibrahim1.mp3';

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
                      child: Text("Surah Ibrahim",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("ابراهيم",
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

class AudioSurah15 extends StatefulWidget {
  @override
  _AudioSurah15State createState() => _AudioSurah15State();
}

class _AudioSurah15State extends State<AudioSurah15> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/15-Al-Hijr1.mp3';

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
                      child: Text("Surah Al-Hijr",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الحجر",
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

class AudioSurah16 extends StatefulWidget {
  @override
  _AudioSurah16State createState() => _AudioSurah16State();
}

class _AudioSurah16State extends State<AudioSurah16> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/16-An-Nahl1.mp3';

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
                      child: Text("Surah An-Nahl",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("النحل",
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

class AudioSurah17 extends StatefulWidget {
  @override
  _AudioSurah17State createState() => _AudioSurah17State();
}

class _AudioSurah17State extends State<AudioSurah17> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/17-Al-Isra1.mp3';

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
                      child: Text("Surah Al-Isra",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الإسرﺃ",
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

class AudioSurah18 extends StatefulWidget {
  @override
  _AudioSurah18State createState() => _AudioSurah18State();
}

class _AudioSurah18State extends State<AudioSurah18> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/18-Al-Kahf1.mp3';

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
                      child: Text("Surah Al-Kahf",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الكهف",
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

class AudioSurah19 extends StatefulWidget {
  @override
  _AudioSurah19State createState() => _AudioSurah19State();
}

class _AudioSurah19State extends State<AudioSurah19> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/19-Maryam1.mp3';

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
                      child: Text("Surah Maryam",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("مريم",
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

class AudioSurah20 extends StatefulWidget {
  @override
  _AudioSurah20State createState() => _AudioSurah20State();
}

class _AudioSurah20State extends State<AudioSurah20> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/20-Ta-Ha1.mp3';

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
                      child: Text("Surah Taha",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("طه",
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

class AudioSurah21 extends StatefulWidget {
  @override
  _AudioSurah21State createState() => _AudioSurah21State();
}

class _AudioSurah21State extends State<AudioSurah21> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/21-Al-Anbiya1.mp3';

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
                      child: Text("Surah Al-Anbiya",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("اﻷﻧﺒﻴﺄ",
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

class AudioSurah22 extends StatefulWidget {
  @override
  _AudioSurah22State createState() => _AudioSurah22State();
}

class _AudioSurah22State extends State<AudioSurah22> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/22-Al-Hajj1.mp3';

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
                image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
            )),
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
                      child: Text("Surah Al-Hajj",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الحج",
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

class AudioSurah23 extends StatefulWidget {
  @override
  _AudioSurah23State createState() => _AudioSurah23State();
}

class _AudioSurah23State extends State<AudioSurah23> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/23-Al-Mumenoon1.mp3';

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
                image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
            )),
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
                      child: Text("Surah Al-Muminun",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("المؤمنون",
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

class AudioSurah24 extends StatefulWidget {
  @override
  _AudioSurah24State createState() => _AudioSurah24State();
}

class _AudioSurah24State extends State<AudioSurah24> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/24-An-Noor1.mp3';

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
                      child: Text("Surah An-Nur",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("النور",
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

class AudioSurah25 extends StatefulWidget {
  @override
  _AudioSurah25State createState() => _AudioSurah25State();
}

class _AudioSurah25State extends State<AudioSurah25> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/25-Al-Furqan1.mp3';

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
    //cache.load("025.mp3");
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
                      child: Text("Surah Al-Furqan",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الفرقان",
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

class AudioSurah26 extends StatefulWidget {
  @override
  _AudioSurah26State createState() => _AudioSurah26State();
}

class _AudioSurah26State extends State<AudioSurah26> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/26-Ash-Shuara1.mp3';

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
                      child: Text("Surah Ash-Shuara",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الشعرﺃ",
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

class AudioSurah27 extends StatefulWidget {
  @override
  _AudioSurah27State createState() => _AudioSurah27State();
}

class _AudioSurah27State extends State<AudioSurah27> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/27-An-Namal.mp3';

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
                      child: Text("Surah An-Naml",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("النمل",
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

class AudioSurah28 extends StatefulWidget {
  @override
  _AudioSurah28State createState() => _AudioSurah28State();
}

class _AudioSurah28State extends State<AudioSurah28> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/28-Al-Qasas1.mp3';

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
                      child: Text("Surah Al-Qasas",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("القصص",
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

class AudioSurah29 extends StatefulWidget {
  @override
  _AudioSurah29State createState() => _AudioSurah29State();
}

class _AudioSurah29State extends State<AudioSurah29> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/29-Al-Ankaboot1.mp3';

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
                      child: Text("Surah Al-Ankabut",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("العنكبوت",
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

class AudioSurah30 extends StatefulWidget {
  @override
  _AudioSurah30State createState() => _AudioSurah30State();
}

class _AudioSurah30State extends State<AudioSurah30> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/30-Ar-Room1.mp3';

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
                      child: Text("Surah Ar-Rum",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الروم",
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

class AudioSurah31 extends StatefulWidget {
  @override
  _AudioSurah31State createState() => _AudioSurah31State();
}

class _AudioSurah31State extends State<AudioSurah31> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/31-Luqman1.mp3';

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
                      child: Text("Surah Luqman",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("لقمان",
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

class AudioSurah32 extends StatefulWidget {
  @override
  _AudioSurah32State createState() => _AudioSurah32State();
}

class _AudioSurah32State extends State<AudioSurah32> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/32-As-Sajda1.mp3';

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
                      child: Text("Surah As-Sajdah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("السجدة",
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

class AudioSurah33 extends StatefulWidget {
  @override
  _AudioSurah33State createState() => _AudioSurah33State();
}

class _AudioSurah33State extends State<AudioSurah33> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/32-As-Sajda1.mp3';

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
                      child: Text("Surah Al-Ahzab",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الأحزاب",
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

class AudioSurah34 extends StatefulWidget {
  @override
  _AudioSurah34State createState() => _AudioSurah34State();
}

class _AudioSurah34State extends State<AudioSurah34> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/34-Saba1.mp3';

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
                      child: Text("Surah Saba",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("ﺳﺒﺄ",
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

class AudioSurah35 extends StatefulWidget {
  @override
  _AudioSurah35State createState() => _AudioSurah35State();
}

class _AudioSurah35State extends State<AudioSurah35> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/35-Fatir1.mp3';

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
                      child: Text("Surah Fatir",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الفاطر",
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

class AudioSurah36 extends StatefulWidget {
  @override
  _AudioSurah36State createState() => _AudioSurah36State();
}

class _AudioSurah36State extends State<AudioSurah36> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/36-Ya-Seen1.mp3';

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
                      child: Text("Surah Yaseen",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("يٰسن",
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

class AudioSurah37 extends StatefulWidget {
  @override
  _AudioSurah37State createState() => _AudioSurah37State();
}

class _AudioSurah37State extends State<AudioSurah37> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/37-As-Saaffat1.mp3';

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
                      child: Text("Surah Us-Saffat",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الصافات",
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

class AudioSurah38 extends StatefulWidget {
  @override
  _AudioSurah38State createState() => _AudioSurah38State();
}

class _AudioSurah38State extends State<AudioSurah38> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/38-Sad1.mp3';

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
                      child: Text("Surah Saad",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("صۤ",
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
