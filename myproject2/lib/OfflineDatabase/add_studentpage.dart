import 'package:flutter/material.dart';

class MyAddstudentPage extends StatefulWidget {
  const MyAddstudentPage({super.key});

  @override
  State<MyAddstudentPage> createState() => _MyAddstudentPageState();
}

class _MyAddstudentPageState extends State<MyAddstudentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(
              "Add student ",
            ),
          ),
          TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: "enter name ",
                labelText: "name"),
          ),
          TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: "enter subject",
                labelText: "subject"),
          ),
          TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: "enter city ",
                labelText: "city"),
          ),
        ],
      ),
    );
  }
}
