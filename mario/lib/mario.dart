import 'dart:math';

import 'package:flutter/material.dart';

class MyMario extends StatelessWidget {
  const MyMario({super.key, this.direction});
  final direction;
  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return Container(
        width: 50,
        height: 50,
        child: Image.asset(
          "assets/standing.png",
        ),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          width: 50,
          height: 50,
          child: Image.asset(
            "assets/standing.png",
          ),
        ),
      );
    }
  }
}
