import 'package:flutter/material.dart';

class MyRowexample extends StatelessWidget {
  const MyRowexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row example")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.home,
            color: Colors.blue,
          ),
          Icon(
            Icons.settings,
            color: Colors.teal,
          ),
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          Icon(
            Icons.alarm,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
