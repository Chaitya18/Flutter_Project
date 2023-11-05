import 'package:flutter/material.dart';

class My2ndExample extends StatefulWidget {
  const My2ndExample({super.key});

  @override
  State<My2ndExample> createState() => _My2ndExampleState();
}

class _My2ndExampleState extends State<My2ndExample> {
  Color? colorname = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        margin: EdgeInsets.all(10),
        height: 300,
        width: double.maxFinite,
        color: colorname,
      ),
      Container(
          margin: EdgeInsets.all(10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  colorname = Colors.red;
                });
              },
              child: Text("Red"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: CircleBorder(),
                  fixedSize: Size(80, 80)),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  colorname = Colors.green;
                });
              },
              child: Text("Green"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: CircleBorder(),
                  fixedSize: Size(80, 80)),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  colorname = Colors.black;
                });
              },
              child: Text("Black"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: CircleBorder(),
                  fixedSize: Size(80, 80)),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  colorname = Colors.blue;
                });
              },
              child: Text("Blue"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: CircleBorder(),
                  fixedSize: Size(80, 80)),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  colorname = Colors.orange;
                });
              },
              child: Text("Orange"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: CircleBorder(),
                  fixedSize: Size(80, 80)),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  colorname = Colors.teal;
                });
              },
              child: Text("Teal"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: CircleBorder(),
                  fixedSize: Size(80, 80)),
            ),
          ])),
      Container(
          margin: EdgeInsets.all(10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  colorname = Colors.pink;
                });
              },
              child: Text("Pink"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: CircleBorder(),
                  fixedSize: Size(80, 80)),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  colorname = Colors.purple;
                });
              },
              child: Text("Purple"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: CircleBorder(),
                  fixedSize: Size(80, 80)),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  colorname = Colors.amber;
                });
              },
              child: Text("Amber"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  shape: CircleBorder(),
                  fixedSize: Size(80, 80)),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  colorname = Colors.yellow;
                });
              },
              child: Text("Yellow"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  shape: CircleBorder(),
                  fixedSize: Size(80, 80)),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  colorname = Colors.lightBlue;
                });
              },
              child: Text("Light Blue"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  shape: CircleBorder(),
                  fixedSize: Size(80, 80)),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  colorname = Colors.grey;
                });
              },
              child: Text("Grey"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  shape: CircleBorder(),
                  fixedSize: Size(80, 80)),
            ),
          ])),
    ]));
  }
}
