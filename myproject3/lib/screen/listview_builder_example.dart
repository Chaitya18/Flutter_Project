import 'package:flutter/material.dart';

class MylistViewbuilder extends StatefulWidget {
  const MylistViewbuilder({super.key});

  @override
  State<MylistViewbuilder> createState() => _MylistViewbuilderState();
}

class _MylistViewbuilderState extends State<MylistViewbuilder> {
  List productList = ["TV", "AC", "FRIDGE", "MOBILE"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView Builder"),
        ),
        body: ListView.builder(
          itemCount: productList.length,
          itemBuilder: ((context, index) {
            return Card(
              child: Text("${productList[index]}"),
            );
          }),
        ));
  }
}
