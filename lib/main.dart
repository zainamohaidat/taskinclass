import 'package:flutter/material.dart';
import 'package:taskinclass/Screen1.dart';
import 'package:taskinclass/Screen2.dart';
import 'Screen1.dart';
import 'Screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
      routes: {
        '/screen1':(context)=>Screen1(),
        '/screen2':(context)=>Screen2(),
      },
    );
  }
}