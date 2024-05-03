import 'package:flutter/material.dart';

class My2NdTask extends StatefulWidget {
  const My2NdTask({super.key});

  @override
  State<My2NdTask> createState() => _My2NdTaskState();
}

class _My2NdTaskState extends State<My2NdTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Container(
              height: 490,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 116, 185, 178)),
              child: Container(
                height: 50,
                child: ListTile(
                  leading: Container(
                    child: Icon(
                      Icons.more_vert,
                      size: 25,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                  title: Center(child: (Text("N I O O A B"))),
                  trailing: Container(
                    child: Icon(
                      Icons.more_vert,
                      size: 25,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                ),
              ),
            ),
            Container(
              height: 318,
              decoration:
                  BoxDecoration(color: Color.fromRGBO(251, 224, 189, 0.965)),
            )
          ],
        )),
      ),
    );
  }
}
