import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red, noteNum: 1),
            buildKey(color: Colors.orange, noteNum: 1),
            buildKey(color: Colors.yellow, noteNum: 1),
            buildKey(color: Colors.green, noteNum: 1),
            buildKey(color: Colors.teal, noteNum: 1),
            buildKey(color: Colors.blue, noteNum: 1),
            buildKey(color: Colors.deepPurple, noteNum: 1),
          ],
        ),
      ),
    );
  }

  Widget buildKey({Color color, int noteNum}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text(''),
        onPressed: () {
          playSound(noteNum);
        },
      ),
    );
  }

  void playSound(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }
}
