import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myproject3/api/page2.dart';
import 'get.dart';

class MyPage1 extends StatelessWidget {
  const MyPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          onPressed: () {
            Get.to(MyPage2());
          },
          child: Text("Go")),
    );
  }
}
