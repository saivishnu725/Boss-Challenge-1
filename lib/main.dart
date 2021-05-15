import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Boss Challenge one',
    home: Scaffold(
      backgroundColor: Colors.indigo.shade800,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text(
          'Ask your question!!',
        ),
        centerTitle: true,
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            number = Random().nextInt(5) + 1;
          });
        },
        child: Expanded(
          child: Image.asset('assets/ball$number.png'),
        ),
      ),
    );
  }
}
