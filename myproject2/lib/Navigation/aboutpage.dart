import 'package:flutter/material.dart';

class MyAboutPage extends StatelessWidget {
  MyAboutPage({super.key, required this.sname});
  String? sname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
      ),
      body: Column(
        children: [
          Container(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("GO To Home Page")),
          ),
          Container(
            child: Text(sname!),
          )
        ],
      ),
    );
    ;
  }
}
