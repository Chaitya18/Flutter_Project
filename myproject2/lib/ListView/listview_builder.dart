import 'package:flutter/material.dart';

class MyListViewBuilder extends StatefulWidget {
  const MyListViewBuilder({super.key});

  @override
  State<MyListViewBuilder> createState() => _MyListViewBuilderState();
}

class _MyListViewBuilderState extends State<MyListViewBuilder> {
  List sname = ["c", "c++", "java", "html", "python"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: sname.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: Colors.orange,
            child: Card(
              elevation: 20,
              margin: EdgeInsets.all(20),
              child: Center(
                child: Text(sname[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
