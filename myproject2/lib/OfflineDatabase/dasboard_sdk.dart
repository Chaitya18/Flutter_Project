import 'package:flutter/material.dart';
import 'add_studentpage.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (Context, index) {
            return Card(
              child: Column(children: [
                Text("Name"),
                Text("Email"),
                Text("Subject"),
              ]),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyAddstudentPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
