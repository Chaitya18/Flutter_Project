// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyStore extends StatefulWidget {
  MyStore({super.key, required this.foodlist, required this.pricelist});
  List foodlist = [];
  List pricelist = [];

  @override
  State<MyStore> createState() => _MyStoreState();
}

class _MyStoreState extends State<MyStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: List.generate(widget.foodlist.length, (index) {
            return ListTile(
              tileColor: Colors.blue,
              leading: Text("${widget.foodlist[index]}"),
              title: Text("${widget.pricelist[index]}"),
              trailing: ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.foodlist.removeAt(index);
                    widget.pricelist.removeAt(index);
                  });
                },
                child: Icon(Icons.delete),
              ),
            );
          }),
        ),
      ),
    );
  }
}
