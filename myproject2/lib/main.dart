import 'package:flutter/material.dart';
import 'package:myproject2/screen/color_change.dart';
import 'package:myproject2/screen/color_change2.dart';
import 'package:myproject2/screen/homepage.dart';
import 'package:myproject2/screen/strawberry.dart';
import 'package:myproject2/screen/task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTask11(),
    );
  }
}
