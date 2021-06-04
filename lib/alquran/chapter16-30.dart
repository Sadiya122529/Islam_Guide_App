import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islam_guide/alquran/quran_chapter_audio.dart';
import 'package:islam_guide/home.dart';

class AudioChapter16 extends StatefulWidget {
  @override
  _AudioChapter16State createState() => _AudioChapter16State();
}

class _AudioChapter16State extends State<AudioChapter16> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/16.mp3';

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
                      child: Text("Qal Alam",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("قَالَ أَلَمْ",
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

class AudioChapter17 extends StatefulWidget {
  @override
  _AudioChapter17State createState() => _AudioChapter17State();
}

class _AudioChapter17State extends State<AudioChapter17> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/17.mp3';

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
                      child: Text("Aqtarabo",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("اقْتَرَبَ",
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

class AudioChapter18 extends StatefulWidget {
  @override
  _AudioChapter18State createState() => _AudioChapter18State();
}

class _AudioChapter18State extends State<AudioChapter18> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/18.mp3';

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
                      child: Text("Qadd Aflaha",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("قَدْ أَفْلَحَ",
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

class AudioChapter19 extends StatefulWidget {
  @override
  _AudioChapter19State createState() => _AudioChapter19State();
}

class _AudioChapter19State extends State<AudioChapter19> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/19.mp3';

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
                      child: Text("Wa Qalallazina",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("وَقَالَ الَّذِينَ",
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

class AudioChapter20 extends StatefulWidget {
  @override
  _AudioChapter20State createState() => _AudioChapter20State();
}

class _AudioChapter20State extends State<AudioChapter20> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/20.mp3';

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
                      child: Text("A’man Khalaq",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("أَمَّنْ خَلَقَ",
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

class AudioChapter21 extends StatefulWidget {
  @override
  _AudioChapter21State createState() => _AudioChapter21State();
}

class _AudioChapter21State extends State<AudioChapter21> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/21.mp3';

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
                      child: Text("Utlu Ma Oohi",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("اتْلُ مَا أُوحِيَ",
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

class AudioChapter22 extends StatefulWidget {
  @override
  _AudioChapter22State createState() => _AudioChapter22State();
}

class _AudioChapter22State extends State<AudioChapter22> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/22.mp3';

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
                      child: Text("Wa Manyaqnut",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("وَمَنْ يَقْنُتْ",
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

class AudioChapter23 extends StatefulWidget {
  @override
  _AudioChapter23State createState() => _AudioChapter23State();
}

class _AudioChapter23State extends State<AudioChapter23> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/23.mp3';

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
                      child: Text("Wa Mali",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("وَمَا لِيَ	",
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

class AudioChapter24 extends StatefulWidget {
  @override
  _AudioChapter24State createState() => _AudioChapter24State();
}

class _AudioChapter24State extends State<AudioChapter24> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/24.mp3';

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
                      child: Text("Faman Azlan",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("فَمَنْ أَظْلَمُ",
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

class AudioChapter25 extends StatefulWidget {
  @override
  _AudioChapter25State createState() => _AudioChapter25State();
}

class _AudioChapter25State extends State<AudioChapter25> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/25.mp3';

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
                      child: Text("Ilahi Yuruddo",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("إِلَيْهِ يُرَدُّ",
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

class AudioChapter26 extends StatefulWidget {
  @override
  _AudioChapter26State createState() => _AudioChapter26State();
}

class _AudioChapter26State extends State<AudioChapter26> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/26.mp3';

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
                      child: Text("Ha’a Meem",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("حم",
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

class AudioChapter27 extends StatefulWidget {
  @override
  _AudioChapter27State createState() => _AudioChapter27State();
}

class _AudioChapter27State extends State<AudioChapter27> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/27.mp3';

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
                      child: Text("Qala Fama Khatbukum",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("قَالَ فَمَا خَطْبُكُمْ",
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

class AudioChapter28 extends StatefulWidget {
  @override
  _AudioChapter28State createState() => _AudioChapter28State();
}

class _AudioChapter28State extends State<AudioChapter28> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/28.mp3';

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
                      child: Text("Qad Sami Allah",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("قَدْ سَمِعَ اللَّهُ",
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

class AudioChapter29 extends StatefulWidget {
  @override
  _AudioChapter29State createState() => _AudioChapter29State();
}

class _AudioChapter29State extends State<AudioChapter29> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/29.mp3';

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
                      child: Text("Tabarakallazi",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("تَبَارَكَ الَّذِي",
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

class AudioChapter30 extends StatefulWidget {
  @override
  _AudioChapter30State createState() => _AudioChapter30State();
}

class _AudioChapter30State extends State<AudioChapter30> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer _player;
  //AudioCache cache;
  String url =
      'https://aswaatulqurraa.com/files/Paras/Saud%20al%20Shuraim/30.mp3';

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
                      child: Text("Amma Yatasa’aloon",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("عَمَّ يَتَسَاءَلُونَ",
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
