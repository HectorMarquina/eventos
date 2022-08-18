import 'package:appeventos01/modules/videos/play_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'basic_page.dart';
import 'clips.dart';

var videoList = [
  {
    'name': 'One piece Opning 1',
    'media_url': 'https://youtu.be/HRaoYuRKBaA',
    'thumb_url': 'https://i.ytimg.com/vi/HRaoYuRKBaA/maxresdefault.jpg'
  },
  {
    'name': 'One piece Opning 2',
    'media_url': 'https://youtu.be/54dp8ucsGG8',
    'thumb_url': 'https://s1.dmcdn.net/v/9QGPO1Vii7nM5HhUX/x1080'
  },
  {
    'name': 'One piece Opning 3',
    'media_url': 'https://youtu.be/7JERctGBNYk',
    'thumb_url': 'https://i.ytimg.com/vi/7JERctGBNYk/maxresdefault.jpg'
  },
];

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Videos',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IntroPage(),
    );
  }
}

class IntroPage extends StatefulWidget {
  IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 120,
              ),
              Text(
                "Videos",
                style: TextStyle(
                  fontSize: 24.0,
                ),
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                          side: BorderSide(color: Colors.black45, width: 1)),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) =>
                                  PlayPage(clips: VideoClip.localClips)),
                        );
                      },
                      minWidth: 240,
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      child: Text(
                        "Play local files",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                          side: BorderSide(color: Colors.black45, width: 1)),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) =>
                                  PlayPage(clips: VideoClip.remoteClips)),
                        );
                      },
                      minWidth: 240,
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      child: Text(
                        "Play remote files",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                          side: BorderSide(color: Colors.black45, width: 1)),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => BasicPage()),
                        );
                      },
                      minWidth: 240,
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      child: Text(
                        "Basic Example",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
