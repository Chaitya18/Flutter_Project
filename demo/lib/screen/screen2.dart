import 'package:flutter/material.dart';

class My2ndScreen extends StatelessWidget {
  const My2ndScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: double.maxFinite,
            decoration: BoxDecoration(color: Colors.green),
          ), //for 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(color: Colors.lightBlue),
              ), //for 2
              Container(
                  height: 200,
                  width: 750,
                  decoration: BoxDecoration(color: Colors.orange)) //for 3
            ],
          ),
          Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(color: Colors.purple)), //for 4
          Container(
              height: 100,
              width: double.maxFinite,
              decoration: BoxDecoration(color: Colors.lightBlue)) //for 5
        ],
      ),
    );
  }
}
