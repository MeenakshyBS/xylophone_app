import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNum.wav'));
  }

  Expanded buildKey({color, soundNum}){
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          playSound(soundNum);
        },
        child: Text(' '),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red,soundNum: 1),
              buildKey(color: Colors.teal,soundNum: 2),
              buildKey(color: Colors.yellow,soundNum: 3),
              buildKey(color: Colors.orange,soundNum: 4),
              buildKey(color: Colors.green,soundNum: 5),
              buildKey(color: Colors.blue,soundNum: 6),
              buildKey(color: Colors.purpleAccent,soundNum: 7),

            ],
          ),
        ),
      ),
    );
  }
}
