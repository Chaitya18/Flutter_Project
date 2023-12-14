import 'package:flutter/material.dart';

class MyCheckboxExample extends StatefulWidget {
  const MyCheckboxExample({super.key});

  @override
  State<MyCheckboxExample> createState() => _MyCheckboxExampleState();
}

class _MyCheckboxExampleState extends State<MyCheckboxExample> {
  List<String> mySubjects = [];
  bool? clanguage;
  bool? python;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Example"),
      ),
    );
  }
}
