import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 119, 187, 242),
        appBar: AppBar(
          title: Text('Decision Making Baall'),
          backgroundColor: Color.fromARGB(255, 0, 68, 135),
        ),
        body: BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int val = 2;

  void changeImage() {
    setState(() {
      val = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: FlatButton(
          onPressed: () {
            changeImage();
          },
          child: Image.asset('images/ball$val.png'),
        ),
      ),
    );
  }
}
