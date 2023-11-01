import 'package:flutter/material.dart';

class My4thScreen extends StatelessWidget {
  const My4thScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 400,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
              ), //1
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(10))), //2
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 300,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(10)),
                    ) //3
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 250,
            width: 550,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
          ) //4
        ],
      ),
    );
  }
}
