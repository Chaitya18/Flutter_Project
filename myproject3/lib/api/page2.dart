import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myproject3/api/page1.dart';
import 'get.dart';

class MyPage2 extends StatelessWidget {
  const MyPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text("Back")),
    );
  }
}
