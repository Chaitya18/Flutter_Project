import 'package:flutter/material.dart';

class MyHorizontalListViewExample extends StatefulWidget {
  const MyHorizontalListViewExample({super.key});

  @override
  State<MyHorizontalListViewExample> createState() =>
      _MyHorizontalListViewExampleState();
}

class _MyHorizontalListViewExampleState
    extends State<MyHorizontalListViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal ListView Example"),
      ),
    );
  }
}
