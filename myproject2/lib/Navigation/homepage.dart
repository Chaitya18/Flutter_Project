import 'package:flutter/material.dart';
import 'package:myproject2/Navigation/aboutpage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _namec = TextEditingController();
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Column(
          children: [
            TextField(
              controller: _namec,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter Name",
                  labelText: "Name"),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    name = _namec.text.toString();
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyAboutPage(
                                sname: name,
                              )));
                },
                child: Text('About Page'))
          ],
        ));
  }
}
