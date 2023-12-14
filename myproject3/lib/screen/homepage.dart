import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 202, 141, 202),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 137, 111, 141),
        title: Text(
          "Whatsapp",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.logout_rounded,
              ))
        ],
      ),
      body: Center(
        child: Text(
          "Hello",
          style: TextStyle(
              fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 137, 111, 141),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
