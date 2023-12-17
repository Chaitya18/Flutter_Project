import 'package:flutter/material.dart';
import 'package:myproject2/Navigation/homepage.dart';
import 'package:myproject2/NavigationDrawer/maindrwaerfile.dart';
import 'package:myproject2/bottomNavigation/bottomnavigtion.dart';
import 'package:myproject2/drawer_example/mainDrwaer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyTask());
  }
}
