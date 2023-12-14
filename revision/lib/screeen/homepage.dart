import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Demo App"),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
            )),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.login)),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            width: double.maxFinite,
            margin: EdgeInsets.all(16),
            child: Center(
              child: Text(
                "Welcome To Flutter ",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.teal),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            color: Color.fromARGB(255, 58, 55, 55),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.teal,
              ),
              title: Text(
                "Contact 1",
                style: TextStyle(color: Colors.teal),
              ),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            color: Color.fromARGB(255, 58, 55, 55),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.teal,
              ),
              title: Text(
                "Contact 2",
                style: TextStyle(color: Colors.teal),
              ),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            color: Color.fromARGB(255, 58, 55, 55),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.teal,
              ),
              title: Text(
                "Contact 3",
                style: TextStyle(color: Colors.teal),
              ),
              trailing: Icon(Icons.call),
            ),
          ),
        ],
      ),
    );
  }
}
