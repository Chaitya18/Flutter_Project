import 'package:flutter/material.dart';

class Billing extends StatefulWidget {
  const Billing({super.key});

  @override
  State<Billing> createState() => _BillingState();
}

class _BillingState extends State<Billing> {
  int? pizza = 150;
  int? prise = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Billing Section"),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.orange,
                  child: Card(
                    elevation: 20,
                    margin: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            child: Text("pizza"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            child: Container(
                              height: 30,
                              width: 155,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          pizza = prise! - pizza!;
                                        });
                                      },
                                      child: Text("-")),
                                  Container(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Text("1"),
                                    ),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          pizza = prise! + pizza!;
                                        });
                                      },
                                      child: Text("+")),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                  Text("pizza = $pizza")
              ],
            ),
          )
        ],
      ),
    );
  }
}
