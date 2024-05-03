import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: 300,
        child: Image.asset("assets/download.jpeg"),
      ),
    );
  }
}
