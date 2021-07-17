import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void playSound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded buildKey({Color color, int colorNumber}) {
  return Expanded(
      child: FlatButton(
    color: color,
    onPressed: () {
      playSound(colorNumber);
    },
  ));
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, colorNumber: 1),
              buildKey(color: Colors.orange, colorNumber: 2),
              buildKey(color: Colors.yellow, colorNumber: 3),
              buildKey(color: Colors.green, colorNumber: 4),
              buildKey(color: Colors.cyan, colorNumber: 5),
              buildKey(color: Colors.blue, colorNumber: 6),
              buildKey(color: Colors.purple, colorNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
