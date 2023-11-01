import 'package:flutter/material.dart';

class My1stPage extends StatelessWidget {
  const My1stPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.teal),
        height: 50,
        width: double.maxFinite,
        child: Column(children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.all(10),
            child: Center(
              child: Text(
                "Hii",
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
