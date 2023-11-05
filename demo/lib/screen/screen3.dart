import 'package:flutter/material.dart';

class My3rdScreen extends StatelessWidget {
  const My3rdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 200,
            width: 700,
            decoration: BoxDecoration(color: Colors.purple),
          ), //for 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(color: Colors.green),
              ), //for 2
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(color: Colors.lightBlue)), //3
                  Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(color: Colors.deepOrange)) //4
                ],
              )),
            ],
          ),
          Container(
              height: 200,
              width: 700,
              decoration: BoxDecoration(color: Colors.green)) //5
        ],
      ),
    );
  }
}
