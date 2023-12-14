import 'package:flutter/material.dart';

class MyColumnExample extends StatelessWidget {
  const MyColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column Example")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(50),
              height: 150,
              width: double.maxFinite,
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.all(50),
              height: 150,
              width: double.maxFinite,
              color: Colors.amber,
            )
          ]),
    );
  }
}
