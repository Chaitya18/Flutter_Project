import 'package:flutter/material.dart';
import 'package:myproject2/screen/strawberry_example.dart';

//import 'package:myproject2/screen/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStrawberry2(),
    );
  }
}
