import 'package:flutter/material.dart';

class MyCheckboxExample extends StatefulWidget {
  const MyCheckboxExample({super.key});

  @override
  State<MyCheckboxExample> createState() => _MyCheckboxExampleState();
}

class _MyCheckboxExampleState extends State<MyCheckboxExample> {
  List<String> mySubjects = [];
  bool? dart = false;
  bool? python = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Example"),
      ),
      body: Column(
        children: [
          CheckboxListTile(
              value: dart,
              title: Text("Dart"),
              onChanged: (bool? value) {
                setState(() {
                  if (value == true) {
                    mySubjects.add("Dart");
                    dart = true;
                  } else {
                    mySubjects.remove("Dart");
                    dart = false;
                  }
                });
              }),
          CheckboxListTile(
              value: python,
              title: Text("Python"),
              onChanged: (bool? value) {
                setState(() {
                  if (value == true) {
                    mySubjects.add("Python");
                    python = true;
                  } else {
                    mySubjects.remove("Python");
                    python = false;
                  }
                });
              }),
          Text("$dart + $python"),
        ],
      ),
    );
  }
}
