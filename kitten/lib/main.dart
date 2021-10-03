import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text("Kitten"),
          backgroundColor: Colors.red[700],
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/kitten.jpg'),
          ),
        ),
      ),
    ),
  );
}
