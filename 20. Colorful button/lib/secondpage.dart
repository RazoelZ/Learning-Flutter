import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:audioplayers/audioplayers.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late AudioPlayer audioPlayer;
  String durasi = "00:00";

  _SecondPageState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dengerin musik"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: (() {
                        playSound('music/music1.mp3');
                      }),
                      child: Text("Play")),
                  ElevatedButton(
                      onPressed: (() {
                        pauseSound();
                      }),
                      child: Text("Pause")),
                  ElevatedButton(
                      onPressed: (() {
                        stopSound();
                      }),
                      child: Text("Stop")),
                  ElevatedButton(
                      onPressed: (() {
                        resumeSound();
                      }),
                      child: Text("Resume")),
                  Text(
                    durasi,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  )
                ],
              )),
            ),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
