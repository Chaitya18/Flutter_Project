import 'package:demo/screen/1.dart';
import 'package:demo/screen/screen2.dart';
import 'package:demo/screen/screen3.dart';
import 'package:demo/screen/screen4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: My3rdScreen(),
    );
  }
}
