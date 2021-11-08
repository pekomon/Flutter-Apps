import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  XylophoneApp({Key? key}) : super(key: key);

  final player = AudioCache();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
                TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: const Text(''),
                ),
                TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.yellow)),
                  child: const Text(''),
                ),
                TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple)),
                  child: const Text(''),
                ),
                TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.tealAccent)),
                  child: const Text(''),
                ),
                TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.pink)),
                  child: const Text(''),
                ),
                TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.amberAccent)),
                  child: const Text(''),
                ),
                TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.greenAccent)),
                  child: const Text(''),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void playSound(int soundNumber) {
    player.play('note$soundNumber.wav');
  }
}
