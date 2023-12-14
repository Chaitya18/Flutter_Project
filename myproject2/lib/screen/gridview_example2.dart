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
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.2)
                        ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Lifestyle Sale",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Hello");
                      },
                      child: Container(
                        height: 60,
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                            child: Text("Shop Now",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ))
          ],
        ),
      )),
    );
  }
}
