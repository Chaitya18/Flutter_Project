import 'package:flutter/material.dart';

class MyTextExample extends StatelessWidget {
  const MyTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Example"),
      ),
      body: Container(
        height: 250,
        width: double.maxFinite,
        alignment: Alignment.center,
        child: Text(
          "Welcome",
          style: TextStyle(
              color: Colors.teal, fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
