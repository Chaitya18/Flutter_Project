import 'package:flutter/material.dart';

class MySlider3 extends StatefulWidget {
  const MySlider3({super.key});

  @override
  State<MySlider3> createState() => _MySlider3State();
}

class _MySlider3State extends State<MySlider3> {
  double _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Slider(
              value: _current,
              max: 100,
              divisions: 100,
              label: _current.round().toString(),
              onChanged: (value) {
                setState(() {
                  _current = value;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
