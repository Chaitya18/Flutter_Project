import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mario/button.dart';
import 'package:mario/mario.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static double marioX = 0;
  static double marioY = 1;
  double time = 0;
  double height = 0;
  double initialHeight = marioY;
  String direction = "right";
  void prejump() {
    time = 0;
    initialHeight = marioY;
  }

  void jump() {
    prejump();
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      time += 0.05;
      height = -4.9 * time * time + 5 * time;

      if (initialHeight - height > 1) {
        setState(() {
          marioY = 1;
        });
      } else {
        setState(() {
          marioY = initialHeight - height;
        });
      }
    });
  }

  void Left() {
    direction = "left";
    setState(() {
      marioX -= 0.02;
    });
  }

  void Right() {
    direction = "right";
    setState(() {
      marioX += 0.02;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.blue,
                child: AnimatedContainer(
                  alignment: Alignment(marioX, marioY),
                  duration: Duration(milliseconds: 0),
                  child: MyMario(
                    direction: direction,
                  ),
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.brown,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonPage(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      function: Left,
                    ),
                    ButtonPage(
                      child: Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                      ),
                      function: jump,
                    ),
                    ButtonPage(
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      function: Right,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
