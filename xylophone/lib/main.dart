import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final player = AudioCache();
    //final audioPlayer = AudioPlayer(playerId: 'my_unique_playerId');
    return MaterialApp(
      title: 'Xylophone',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.red,
                  child: TextButton(
                      onPressed: () {
                        player.play('note1.wav');
                      },
                      child: const Text('')),
                ),
                Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.yellow,
                  child: TextButton(
                      onPressed: () {
                        player.play('note2.wav');
                      },
                      child: const Text('')),
                ),
                Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.lightBlue,
                  child: TextButton(
                      onPressed: () {
                        player.play('note3.wav');
                      },
                      child: const Text('')),
                ),
                Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.tealAccent,
                  child: TextButton(
                      onPressed: () {
                        player.play('note4.wav');
                      },
                      child: const Text('')),
                ),
                Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.pink,
                  child: TextButton(
                      onPressed: () {
                        player.play('note5.wav');
                      },
                      child: const Text('')),
                ),
                Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.amberAccent,
                  child: TextButton(
                      onPressed: () {
                        player.play('note6.wav');
                      },
                      child: const Text('')),
                ),
                Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.greenAccent,
                  child: TextButton(
                      onPressed: () {
                        player.play('note7.wav');
                      },
                      child: const Text('')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
