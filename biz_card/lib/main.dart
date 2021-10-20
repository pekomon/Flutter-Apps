import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('images/saddog.jpg'),
              ),
              Text(
                "Sad Dogger",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                "FLUTTER EXPERT",
                style: TextStyle(
                    color: Colors.tealAccent,
                    fontSize: 26.0,
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2.0),
              ),
              SizedBox(
                height: 20.0,
                width: 160.0,
                child: Divider(
                  color: Colors.tealAccent,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.teal),
                  title: Text(
                    "+385 990 990 9900",
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0,
                        fontFamily: 'SourceSansPro'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.teal),
                  title: Text(
                    "sad.dog@email.address",
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0,
                        fontFamily: 'SourceSansPro'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
