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
    List buttonColors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.pink,
      Colors.teal,
      Colors.purple,
      Colors.yellow,
    ];
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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (var i = 0; i < buttonColors.length; i++)
                createSoundButton(i + 1, buttonColors[i])
            ],
          ),
        ),
      ),
    );
  }

  Widget createSoundButton(int soundNumber, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        child: const Text(''),
      ),
    );
  }

  void playSound(int soundNumber) => player.play('note$soundNumber.wav');
}
