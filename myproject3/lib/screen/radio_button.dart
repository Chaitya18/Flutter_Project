import 'package:flutter/material.dart';

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({super.key});

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Radio Button Example"),
        ),
        body: Column(
          children: [
            RadioListTile(
                title: Text("Male"),
                value: "Male",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                }),
            RadioListTile(
                title: Text("Female"),
                value: "Female",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                }),
            RadioListTile(
                title: Text("Transformer"),
                value: "Transformer",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                })
          ],
        ));
  }
}
