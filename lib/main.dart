import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int soundNumber, Color color) {
    return Expanded(
      child: Container(
        color: color,
        child: FlatButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: Container(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.blueGrey.shade100),
              buildKey(2, Colors.blueGrey.shade200),
              buildKey(3, Colors.blueGrey.shade300),
              buildKey(4, Colors.blueGrey.shade400),
              buildKey(5, Colors.blueGrey.shade500),
              buildKey(6, Colors.blueGrey.shade600),
              buildKey(7, Colors.blueGrey.shade700)
            ],
          ),
        ),
      ),
    );
  }
}
