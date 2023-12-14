import 'package:flutter/material.dart';

class MyConditional extends StatefulWidget {
  const MyConditional({super.key});

  @override
  State<MyConditional> createState() => _MyConditionalState();
}

class _MyConditionalState extends State<MyConditional> {
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            color: status ? Colors.cyan : Colors.black,
          ),
          Container(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (status) {
                      status = false;
                    } else {
                      status = true;
                    }
                  });
                },
                child: Text(
                  "Change",
                )),
          )
        ],
      ),
    );
  }
}
