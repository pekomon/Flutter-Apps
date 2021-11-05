import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dices'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                debugPrint('onPressed dice1');
                setState(() {
                  leftDice = getRandomDiceNumber();
                });
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                debugPrint('onPressed dice2');
                setState(() {
                  rightDice = getRandomDiceNumber();
                });
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }

  int getRandomDiceNumber() {
    return Random().nextInt(6) + 1;
  }
}
