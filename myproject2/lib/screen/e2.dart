import 'package:flutter/material.dart';

class MyE2 extends StatefulWidget {
  const MyE2({super.key});

  @override
  State<MyE2> createState() => _MyE2State();
}

class _MyE2State extends State<MyE2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hii"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.dangerous,
          color: Colors.red,
        ),
      ),
    );
  }
}
