import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  double? num1;
  double? num2;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator Example"),
      ),
      body: Container(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: n1,
              decoration: InputDecoration(labelText: "Number 1"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: n2,
              decoration: InputDecoration(labelText: "Number 2"),
            ),
          ),
          Container(
            child: Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result =
                            (double.parse((n1.text)) + double.parse(n2.text));
                      });
                    },
                    child: Text("+")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result =
                            (double.parse((n1.text)) - double.parse(n2.text));
                      });
                    },
                    child: Text("-")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result =
                            (double.parse((n1.text)) * double.parse(n2.text));
                      });
                    },
                    child: Text("*")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result =
                            (double.parse((n1.text)) / double.parse(n2.text));
                      });
                    },
                    child: Text("/")),
              ],
            ),
          ),
          Container(
            child: Text("Result : $result"),
          )
        ]),
      ),
    );
  }
}
