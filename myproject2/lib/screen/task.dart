import 'package:flutter/material.dart';

class MyTask11 extends StatefulWidget {
  const MyTask11({super.key});

  @override
  State<MyTask11> createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask11> {
  String? course = "Course Name"; //set value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Course Selection"),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.blue),
            margin: EdgeInsets.all(10),
            height: 300,
            width: double.maxFinite,
            child: Center(
                child: Text("$course",
                    style: TextStyle(color: Colors.red, fontSize: 35))),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        course = "Java";
                      });
                    },
                    child: Text("Java")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        course = "Flutter";
                      });
                    },
                    child: Text("Flutter"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
