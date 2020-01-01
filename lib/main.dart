import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {});
            },
            child: Image.asset(getBallImageAssetPath()),
          ),
        ),
      ],
    );
  }
}

int getRandomBallNumber() {
  return Random().nextInt(5) + 1;
}

String getBallImageAssetPath() {
  int number = getRandomBallNumber();
  return 'images/ball$number.png';
}
