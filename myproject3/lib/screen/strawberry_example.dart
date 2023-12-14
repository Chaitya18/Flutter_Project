import 'package:flutter/material.dart';

class MyStrawberry2 extends StatelessWidget {
  const MyStrawberry2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.teal, width: 2)),
        child: Column(
          children: [
            Container(
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal, width: 5),
                    color: Colors.teal),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Center(
                    child: Text(
                  "Hi",
                  style: TextStyle(fontSize: 20),
                )))
          ],
        ),
      ),
    );
  }
}
