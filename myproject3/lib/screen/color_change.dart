import 'package:flutter/material.dart';

class MyButtonExample extends StatefulWidget {
  const MyButtonExample({super.key});

  @override
  State<MyButtonExample> createState() => _MyButtonExampleState();
}

class _MyButtonExampleState extends State<MyButtonExample> {
  Color? colorname = Colors.white; //Default color set
  bool? status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamicallly Color Changing"),
      ),
      body: Container(
        height: 300,
        width: double.maxFinite,
        color: colorname,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Click Button"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (status == true) {
                      colorname = Colors.purple;
                      status = false;
                    } else {
                      colorname = Colors.orange;
                      status = true;
                    }
                  });
                },
                child: Text("Click Me!"))
          ],
        ),
      ),
    );
  }
}
