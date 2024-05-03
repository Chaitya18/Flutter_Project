import 'package:flutter/material.dart';
import 'package:pos/Screen/Add-Items.dart';
import 'package:pos/Screen/Login.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  int? current_BtB = 0;
  List name = [AddingItems1()];

  List menulist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 6, 18, 67),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListTile(
                title: Text(
                  "Profile",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  //Profile
                },
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListTile(
                title: Text(
                  "Personal Details",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  //Personldetails
                },
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListTile(
                title: Text(
                  "Add Products",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  //Add Mare items
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddingItems1(),
                      ));
                },
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListTile(
                title: Text(
                  "View Products",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  //view yoour products
                },
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListTile(
                title: Text(
                  "Add Machines",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  //Add machins
                },
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListTile(
                title: Text(
                  "View Receipts",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  //receipts
                },
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListTile(
                title: Text(
                  "Log out",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
                },
              ),
            ),
          ],
        ),
      ),
      body: name.elementAt(0),
    );
  }
}
