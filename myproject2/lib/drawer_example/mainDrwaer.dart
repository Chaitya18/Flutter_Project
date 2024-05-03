import 'package:flutter/material.dart';

class MyTask extends StatefulWidget {
  const MyTask({super.key});

  @override
  State<MyTask> createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 219, 172, 10),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 25, bottom: 15),
              height: 100,
              width: double.maxFinite,
              child: Center(
                  child: Text(
                "U B A C U P",
                style: TextStyle(fontSize: 40, color: Colors.brown),
              )),
            ),
            Container(
              height: 100,
              width: 350,
              child: ListTile(
                leading: ElevatedButton(
                  onPressed: () {},
                  child: Text("筹码"),
                  style: ElevatedButton.styleFrom(
                      shadowColor: Color.fromARGB(255, 14, 14, 14),
                      backgroundColor: const Color.fromARGB(255, 97, 203, 192),
                      fixedSize: Size(60, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.water_drop),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 210, 104, 139),
                      fixedSize: Size(50, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            Container(
              height: 180,
              child: Image.asset("assets/chips.png"),
            ),
            Container(
                margin: EdgeInsets.only(top: 39),
                child: ListTile(
                  leading: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "🍞",
                      style: TextStyle(fontSize: 25),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(50, 80),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  title: Center(
                      child: Text(
                    "чипсы",
                    style: TextStyle(fontSize: 35),
                  )),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text("лежит"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 210, 104, 139),
                        fixedSize: Size(80, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(top: 39),
                child: ListTile(
                  leading: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "🥯",
                      style: TextStyle(fontSize: 25),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(50, 80),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  title: Center(
                      child: Text("чипсы", style: TextStyle(fontSize: 35))),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text("остры"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 210, 104, 139),
                        fixedSize: Size(80, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(top: 39),
                child: ListTile(
                  leading: Text(
                    "иди на хуй",
                    style: TextStyle(fontSize: 25),
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "🔥",
                      style: TextStyle(fontSize: 25),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 210, 104, 139),
                        fixedSize: Size(80, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(top: 39),
                child: ListTile(
                  leading: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "🥨",
                      style: TextStyle(fontSize: 25),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(50, 80),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  title: Center(
                      child: Text("чипсы", style: TextStyle(fontSize: 35))),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text("остры"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 210, 104, 139),
                        fixedSize: Size(80, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                )),
          ],
        )),
      ),
    );
  }
}
