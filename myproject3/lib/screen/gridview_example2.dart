import 'package:flutter/material.dart';

class MyGridViewExample extends StatefulWidget {
  const MyGridViewExample({super.key});

  @override
  State<MyGridViewExample> createState() => _MyGridViewExampleState();
}

class _MyGridViewExampleState extends State<MyGridViewExample> {
  List images = [
    "https://www.home-designing.com/wp-content/uploads/2021/10/curved-living-room-furniture.jpg",
    "https://www.caffelattehome.com/img/inspirations/This-magnificent-space-brings-a-new-meaning-to-dream-home/This-magnificent-space-brings-a-new-meaning-to-dream-home.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey[500],
        leading: Icon(Icons.menu),
        title: Text("Home"),
        centerTitle: true,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.all(14),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "0",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.caffelattehome.com/img/inspirations/This-magnificent-space-brings-a-new-meaning-to-dream-home/This-magnificent-space-brings-a-new-meaning-to-dream-home.jpg"),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      )),
    );
  }
}
