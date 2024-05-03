import 'package:flutter/material.dart';
import 'package:myproject2/NavigationDrawer/maindrwaerfile.dart';
import 'package:myproject2/login.dart';
import 'package:myproject2/screen/gridview_example2.dart';
import 'package:myproject2/screen/radio_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mylogin(),
    );
  }
}
