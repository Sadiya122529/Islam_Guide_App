import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islam_guide/alquran/quran_surah_audio.dart';
import 'package:islam_guide/home.dart';

class AudioSurah39 extends StatefulWidget {
  @override
  _AudioSurah39State createState() => _AudioSurah39State();
}

class _AudioSurah39State extends State<AudioSurah39> {
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
                      child: Text("Surah Az-Zumar",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الزمر",
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

class AudioSurah40 extends StatefulWidget {
  @override
  _AudioSurah40State createState() => _AudioSurah40State();
}

class _AudioSurah40State extends State<AudioSurah40> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/40-Al-Ghafir1.mp3';

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
                      child: Text("Surah Al-Ghafir",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("غافر",
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

class AudioSurah41 extends StatefulWidget {
  @override
  _AudioSurah41State createState() => _AudioSurah41State();
}

class _AudioSurah41State extends State<AudioSurah41> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/41-Fussilat1.mp3';

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
                      child: Text("Surah Fussilat",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("فصلت",
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

class AudioSurah42 extends StatefulWidget {
  @override
  _AudioSurah42State createState() => _AudioSurah42State();
}

class _AudioSurah42State extends State<AudioSurah42> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/42-Ash-Shura1.mp3';

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
                      child: Text("Surah Ash-Shura",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الشورى",
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

class AudioSurah43 extends StatefulWidget {
  @override
  _AudioSurah43State createState() => _AudioSurah43State();
}

class _AudioSurah43State extends State<AudioSurah43> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/43-Az-Zukhruf1.mp3';

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
                      child: Text("Surah Az-Zukhruf",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الزخرف",
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

class AudioSurah44 extends StatefulWidget {
  @override
  _AudioSurah44State createState() => _AudioSurah44State();
}

class _AudioSurah44State extends State<AudioSurah44> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/44-Ad-Dukhan1.mp3';

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
                      child: Text("Surah Ad-Dukhan",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الدخان",
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

class AudioSurah45 extends StatefulWidget {
  @override
  _AudioSurah45State createState() => _AudioSurah45State();
}

class _AudioSurah45State extends State<AudioSurah45> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/45-Al-Jathiya1.mp3';

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
                      child: Text("Surah Al-Jathiyah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الجاثية",
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

class AudioSurah46 extends StatefulWidget {
  @override
  _AudioSurah46State createState() => _AudioSurah46State();
}

class _AudioSurah46State extends State<AudioSurah46> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/46-Al-Ahqaf1.mp3';

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
                      child: Text("Surah Al-Ahqaf",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الأحقاف",
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

class AudioSurah47 extends StatefulWidget {
  @override
  _AudioSurah47State createState() => _AudioSurah47State();
}

class _AudioSurah47State extends State<AudioSurah47> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/47-Muhammad1.mp3';

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
                      child: Text("Surah Al-Muhammad",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("محمد",
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

class AudioSurah48 extends StatefulWidget {
  @override
  _AudioSurah48State createState() => _AudioSurah48State();
}

class _AudioSurah48State extends State<AudioSurah48> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/48-Al-Fath1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Colors.black,
          inactiveColor: Colors.grey[800],
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
                      child: Text("Surah Al-Fateh",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الفتح",
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

class AudioSurah49 extends StatefulWidget {
  @override
  _AudioSurah49State createState() => _AudioSurah49State();
}

class _AudioSurah49State extends State<AudioSurah49> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/49-Al-Hujraat1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Colors.black,
          inactiveColor: Colors.grey[800],
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
                      child: Text("Surah Al-Hujurat",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الحجرات",
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

class AudioSurah50 extends StatefulWidget {
  @override
  _AudioSurah50State createState() => _AudioSurah50State();
}

class _AudioSurah50State extends State<AudioSurah50> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/50-Qaaf.mp3';

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
                      child: Text("Surah Qaf",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("ق",
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

class AudioSurah51 extends StatefulWidget {
  @override
  _AudioSurah51State createState() => _AudioSurah51State();
}

class _AudioSurah51State extends State<AudioSurah51> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/51-Adh-Dhariyat1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Colors.black,
          inactiveColor: Colors.grey[800],
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
                      child: Text("Surah Adh-Dhariyat",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الذاريات",
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

class AudioSurah52 extends StatefulWidget {
  @override
  _AudioSurah52State createState() => _AudioSurah52State();
}

class _AudioSurah52State extends State<AudioSurah52> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/52-At-Tur1.mp3';

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
                      child: Text("Surah At-Tur",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الطور",
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

class AudioSurah53 extends StatefulWidget {
  @override
  _AudioSurah53State createState() => _AudioSurah53State();
}

class _AudioSurah53State extends State<AudioSurah53> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/53-An-Najam.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Colors.black,
          inactiveColor: Colors.grey[800],
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
                      child: Text("Surah AN-Najm",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("النجم",
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

class AudioSurah54 extends StatefulWidget {
  @override
  _AudioSurah54State createState() => _AudioSurah54State();
}

class _AudioSurah54State extends State<AudioSurah54> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/54-Al-Qamar1.mp3';

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
                      child: Text("Surah Al-Qamar",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("القمر",
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

class AudioSurah55 extends StatefulWidget {
  @override
  _AudioSurah55State createState() => _AudioSurah55State();
}

class _AudioSurah55State extends State<AudioSurah55> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/55-Ar-Rahman1.mp3';

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 250,
      child: Slider.adaptive(
          activeColor: Colors.black,
          inactiveColor: Colors.grey[800],
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
                      child: Text("Surah Ar-Rahman",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الرحمن",
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

class AudioSurah56 extends StatefulWidget {
  @override
  _AudioSurah56State createState() => _AudioSurah56State();
}

class _AudioSurah56State extends State<AudioSurah56> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/56-Al-Waqiya.mp3';

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
                      child: Text("Surah Al-Waqiah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الواقعة",
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

class AudioSurah57 extends StatefulWidget {
  @override
  _AudioSurah57State createState() => _AudioSurah57State();
}

class _AudioSurah57State extends State<AudioSurah57> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/57-Al-Hadeed.mp3';

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
                      child: Text("Surah Al-Hadid",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الحديد",
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

class AudioSurah58 extends StatefulWidget {
  @override
  _AudioSurah58State createState() => _AudioSurah58State();
}

class _AudioSurah58State extends State<AudioSurah58> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/58-Al-Mujadila1.mp3';

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
                      child: Text("Surah Al-Mujadilah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("المجادلة",
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

class AudioSurah59 extends StatefulWidget {
  @override
  _AudioSurah59State createState() => _AudioSurah59State();
}

class _AudioSurah59State extends State<AudioSurah59> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/59-Al-Hashr1.mp3';

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
                      child: Text("Surah Al-Hashr",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الحشر",
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

class AudioSurah60 extends StatefulWidget {
  @override
  _AudioSurah60State createState() => _AudioSurah60State();
}

class _AudioSurah60State extends State<AudioSurah60> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/60-Al-Mumtahina1.mp3';

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
                      child: Text("Surah Al-Mumtahinah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("قالممتحنة",
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

class AudioSurah61 extends StatefulWidget {
  @override
  _AudioSurah61State createState() => _AudioSurah61State();
}

class _AudioSurah61State extends State<AudioSurah61> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/61-As-Saff1.mp3';

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
                      child: Text("Surah As-Saf",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الصف",
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

class AudioSurah62 extends StatefulWidget {
  @override
  _AudioSurah62State createState() => _AudioSurah62State();
}

class _AudioSurah62State extends State<AudioSurah62> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/62-Al-Jumua1.mp3';

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
                      child: Text("Surah Al-Jumuah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الجمعة",
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

class AudioSurah63 extends StatefulWidget {
  @override
  _AudioSurah63State createState() => _AudioSurah63State();
}

class _AudioSurah63State extends State<AudioSurah63> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/63-Al-Munafiqoon1.mp3';

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
                      child: Text("Surah Al-Munafiqun",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("المنافقون",
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

class AudioSurah64 extends StatefulWidget {
  @override
  _AudioSurah64State createState() => _AudioSurah64State();
}

class _AudioSurah64State extends State<AudioSurah64> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/64-At-Taghabun1.mp3';

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
                      child: Text("Surah At-Taghabun",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("التغابن",
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

class AudioSurah65 extends StatefulWidget {
  @override
  _AudioSurah65State createState() => _AudioSurah65State();
}

class _AudioSurah65State extends State<AudioSurah65> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/65-At-Talaq1.mp3';

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
                      child: Text("Surah Al-Talaq",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الطلاق",
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

class AudioSurah66 extends StatefulWidget {
  @override
  _AudioSurah66State createState() => _AudioSurah66State();
}

class _AudioSurah66State extends State<AudioSurah66> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/66-At-Tahrim1.mp3';

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
                      child: Text("Surah Al-Tahrim",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("التحريم",
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

class AudioSurah67 extends StatefulWidget {
  @override
  _AudioSurah67State createState() => _AudioSurah67State();
}

class _AudioSurah67State extends State<AudioSurah67> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/67-Al-Mulk1.mp3';

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
                      child: Text("Surah Al-Mulk",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الملك",
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

class AudioSurah68 extends StatefulWidget {
  @override
  _AudioSurah68State createState() => _AudioSurah68State();
}

class _AudioSurah68State extends State<AudioSurah68> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/68-Al-Qalam1.mp3';

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
                      child: Text("Surah Al-Qalam",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("القلم",
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

class AudioSurah69 extends StatefulWidget {
  @override
  _AudioSurah69State createState() => _AudioSurah69State();
}

class _AudioSurah69State extends State<AudioSurah69> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/69-Al-Haaqqa1.mp3';

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
                      child: Text("Surah Al-Haqqah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الحاقة",
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

class AudioSurah70 extends StatefulWidget {
  @override
  _AudioSurah70State createState() => _AudioSurah70State();
}

class _AudioSurah70State extends State<AudioSurah70> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/70-Al-Maarij1.mp3';

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
                      child: Text("Surah Al-Marij",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("المعارج",
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

class AudioSurah71 extends StatefulWidget {
  @override
  _AudioSurah71State createState() => _AudioSurah71State();
}

class _AudioSurah71State extends State<AudioSurah71> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/71-Nooh1.mp3';

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
                      child: Text("Surah Nuh",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("نوح",
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

class AudioSurah72 extends StatefulWidget {
  @override
  _AudioSurah72State createState() => _AudioSurah72State();
}

class _AudioSurah72State extends State<AudioSurah72> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/72-Al-Jinn1.mp3';

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
                      child: Text("Surah Al-Jinn",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الجن",
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

class AudioSurah73 extends StatefulWidget {
  @override
  _AudioSurah73State createState() => _AudioSurah73State();
}

class _AudioSurah73State extends State<AudioSurah73> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/73-Al-Muzzammil1.mp3';

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
                      child: Text("Surah Al-Muzzammil",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("المزمل",
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

class AudioSurah74 extends StatefulWidget {
  @override
  _AudioSurah74State createState() => _AudioSurah74State();
}

class _AudioSurah74State extends State<AudioSurah74> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/74-Al-Muddaththir1.mp3';

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
                      child: Text("Surah Al-Muddaththir",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("المدثر",
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

class AudioSurah75 extends StatefulWidget {
  @override
  _AudioSurah75State createState() => _AudioSurah75State();
}

class _AudioSurah75State extends State<AudioSurah75> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/75-Al-Qiyamah.mp3';

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
                      child: Text("Surah Al-Qiyamah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("القيامة",
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

class AudioSurah76 extends StatefulWidget {
  @override
  _AudioSurah76State createState() => _AudioSurah76State();
}

class _AudioSurah76State extends State<AudioSurah76> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://thechosenone.info/wp-content/uploads/2014/09/76-Al-Insan1.mp3';

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
                      child: Text("Surah Al-Insan",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الإنسان",
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
