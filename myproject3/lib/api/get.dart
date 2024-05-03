import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bottom Sheet Demo'),
        ),
        body: Center(
          child: ElevatedButton(onPressed: () {}, child: Text('Open')),
        ));
  }
}
