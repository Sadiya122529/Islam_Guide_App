import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islam_guide/alquran/quran_chapter_audio.dart';
import 'package:islam_guide/home.dart';

class AudioChapter1 extends StatefulWidget {
  @override
  _AudioChapter1State createState() => _AudioChapter1State();
}

class _AudioChapter1State extends State<AudioChapter1> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/1.mp3';

  AudioPlayer _player;
  //AudioCache cache;

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
                  MaterialPageRoute(builder: (context) => ChapterAudio()),
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
                      child: Text("Alif Lam Meem",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("الم",
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
                            color: Colors.blueGrey[900],
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

class AudioChapter2 extends StatefulWidget {
  @override
  _AudioChapter2State createState() => _AudioChapter2State();
}

class _AudioChapter2State extends State<AudioChapter2> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/2.mp3';

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
                  MaterialPageRoute(builder: (context) => ChapterAudio()),
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
                      child: Text("Sayaqool",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("سَيَقُولُ",
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
                            color: Colors.blueGrey[900],
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

class AudioChapter3 extends StatefulWidget {
  @override
  _AudioChapter3State createState() => _AudioChapter3State();
}

class _AudioChapter3State extends State<AudioChapter3> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/3.mp3';

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
                  MaterialPageRoute(builder: (context) => ChapterAudio()),
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
                      child: Text("Tilkal Rusull",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("تِلْكَ الرُّسُلُ",
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
                            color: Colors.blueGrey[900],
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

class AudioChapter4 extends StatefulWidget {
  @override
  _AudioChapter4State createState() => _AudioChapter4State();
}

class _AudioChapter4State extends State<AudioChapter4> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/4.mp3';

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
                  MaterialPageRoute(builder: (context) => ChapterAudio()),
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
                      child: Text("Lan Tana Loo",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("لَنْ تَنَالُوا",
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
                            color: Colors.blueGrey[900],
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

class AudioChapter5 extends StatefulWidget {
  @override
  _AudioChapter5State createState() => _AudioChapter5State();
}

class _AudioChapter5State extends State<AudioChapter5> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/5.mp3';

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
                  MaterialPageRoute(builder: (context) => ChapterAudio()),
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
                      child: Text("Wal Mohsanat",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("وَالْمُحْصَنَاتُ",
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
                            color: Colors.blueGrey[900],
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

class AudioChapter6 extends StatefulWidget {
  @override
  _AudioChapter6State createState() => _AudioChapter6State();
}

class _AudioChapter6State extends State<AudioChapter6> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/6.mp3';

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
                  MaterialPageRoute(builder: (context) => ChapterAudio()),
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
                      child: Text("La Yuhibbullah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("لَا يُحِبُّ اللَّهُ",
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
                            color: Colors.blueGrey[900],
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

class AudioChapter7 extends StatefulWidget {
  @override
  _AudioChapter7State createState() => _AudioChapter7State();
}

class _AudioChapter7State extends State<AudioChapter7> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/7.mp3';

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
                  MaterialPageRoute(builder: (context) => ChapterAudio()),
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
                      child: Text("Wa Iza Samiu",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("وَإِذَا سَمِعُوا",
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
                            color: Colors.blueGrey[900],
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

class AudioChapter8 extends StatefulWidget {
  @override
  _AudioChapter8State createState() => _AudioChapter8State();
}

class _AudioChapter8State extends State<AudioChapter8> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/8.mp3';

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
                  MaterialPageRoute(builder: (context) => ChapterAudio()),
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
                      child: Text("Wa Lau Annana",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("وَلَوْ أَنَّنَا",
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
                            color: Colors.blueGrey[900],
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

class AudioChapter9 extends StatefulWidget {
  @override
  _AudioChapter9State createState() => _AudioChapter9State();
}

class _AudioChapter9State extends State<AudioChapter9> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/9.mp3';

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
                  MaterialPageRoute(builder: (context) => ChapterAudio()),
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
                      child: Text("Qalal Malau",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("قَالَ الْمَلَأُ",
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
                            color: Colors.blueGrey[900],
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

class AudioChapter10 extends StatefulWidget {
  @override
  _AudioChapter10State createState() => _AudioChapter10State();
}

class _AudioChapter10State extends State<AudioChapter10> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/10.mp3';

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
                  MaterialPageRoute(builder: (context) => ChapterAudio()),
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
                      child: Text("Wa A’lamu",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("وَاعْلَمُوا",
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
                            color: Colors.blueGrey[900],
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

class AudioChapter11 extends StatefulWidget {
  @override
  _AudioChapter11State createState() => _AudioChapter11State();
}

class _AudioChapter11State extends State<AudioChapter11> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/11.mp3';

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
                  MaterialPageRoute(builder: (context) => ChapterAudio()),
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
                      child: Text("Yatazeroon",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("يَعْتَذِرُونَ",
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
                            color: Colors.blueGrey[900],
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

class AudioChapter12 extends StatefulWidget {
  @override
  _AudioChapter12State createState() => _AudioChapter12State();
}

class _AudioChapter12State extends State<AudioChapter12> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/12.mp3';

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
                  MaterialPageRoute(builder: (context) => ChapterAudio()),
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
                      child: Text("Wa Mamin Da’abat	",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("وَمَا مِنْ دَابَّةٍ",
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
                            color: Colors.blueGrey[900],
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

class AudioChapter13 extends StatefulWidget {
  @override
  _AudioChapter13State createState() => _AudioChapter13State();
}

class _AudioChapter13State extends State<AudioChapter13> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/13.mp3';

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
                  MaterialPageRoute(builder: (context) => ChapterAudio()),
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
                      child: Text("Wa Ma Ubrioo",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("وَمَا أُبَرِّئُ",
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
                            color: Colors.blueGrey[900],
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

class AudioChapter14 extends StatefulWidget {
  @override
  _AudioChapter14State createState() => _AudioChapter14State();
}

class _AudioChapter14State extends State<AudioChapter14> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/14.mp3';

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
                  MaterialPageRoute(builder: (context) => ChapterAudio()),
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
                      child: Text("Rubama",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("رُبَمَا",
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
                            color: Colors.blueGrey[900],
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

class AudioChapter15 extends StatefulWidget {
  @override
  _AudioChapter15State createState() => _AudioChapter15State();
}

class _AudioChapter15State extends State<AudioChapter15> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/15.mp3';

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
                  MaterialPageRoute(builder: (context) => ChapterAudio()),
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
                      child: Text("Subhanallazi",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("سُبْحَانَ الَّذِي",
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
                            color: Colors.blueGrey[900],
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
