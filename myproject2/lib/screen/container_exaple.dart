import 'package:flutter/material.dart';

class MyContainerExample extends StatelessWidget {
  const MyContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Example"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.deepOrange,
          child: Center(child: Text("Welcome To Container")),
        ),
      ),
    );
  }
}
