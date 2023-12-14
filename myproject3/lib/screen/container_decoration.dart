import 'package:flutter/material.dart';

class MyContainerDecoration extends StatelessWidget {
  const MyContainerDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Decoration"),
      ),
      body: Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.all(20),
          height: 250,
          child: Icon(
            Icons.home,
            size: 35,
            color: Colors.white,
          ),
          width: double.maxFinite,
          transform: Matrix4.rotationZ(6),
          decoration: BoxDecoration(
            color: Colors.teal,
            border: Border.all(width: 20, color: Colors.black),
            boxShadow: [BoxShadow(color: Colors.pink, blurRadius: 20)],
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }
}
