import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Colors',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Colors'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.amber,
    Colors.black,
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.purple,
    Colors.pink,
    Colors.green,
    Colors.blue,
  ];

  var currentColor = Colors.white;

  void setRandomColor() {
    var screenColor = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[screenColor];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
          child: RaisedButton(
        child: Text(
          'Change It!',
        ),
        color: Colors.black,
        onPressed: setRandomColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      )),
    );
  }
}
