import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  Player({Key? key}) : super(key: key);

  @override
  _PlayerState createState() => _PlayerState();
}


class _PlayerState extends State<Player>{
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    playAudio();
  }

  Future<void> playAudio() async {
    await audioPlayer.setUrl('https://luan.xyz/files/audio/ambient_c_motion.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          child: const Text('Play'),
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            onPrimary: Colors.white,
          ),
          onPressed: () => audioPlayer.resume(),
        ),
        ElevatedButton(
          child: const Text('Pause'),
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            onPrimary: Colors.white,
          ),
          onPressed: () => audioPlayer.pause(),
        ),
        ElevatedButton(
          child: const Text('Stop'),
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            onPrimary: Colors.white,
          ),
          onPressed: () => audioPlayer.stop(),
        ),
      ],
    );
  }
}