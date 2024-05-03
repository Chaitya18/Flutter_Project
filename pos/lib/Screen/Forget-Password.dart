// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pos/Screen/Login.dart';

class MyForgetPassword extends StatefulWidget {
  const MyForgetPassword({super.key});

  @override
  State<MyForgetPassword> createState() => _MyForgetPasswordState();
}

class _MyForgetPasswordState extends State<MyForgetPassword> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool? tbox = false;
  bool? bclick = false;
  String? suname;
  String? spwd;
  String? ptext = "Next";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
            margin: EdgeInsets.all(20),
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text(
                  "Forgot Your Password",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "Please Enter Your Username you'd like to reset your password",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                tbox == false
                    ? TextField(
                        controller: username,
                        decoration: InputDecoration(
                          hintText: "Username",
                          labelText: "Username",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18)),
                        ),
                      )
                    : TextField(
                        controller: password,
                        decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18)),
                        ),
                      ),
                SizedBox(height: 50),
                SizedBox(
                  height: 50,
                  width: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () {
                      if (tbox == false) {
                        suname = username.text.toString();
                      }
                      if (tbox == true) {
                        spwd = password.text.toString();
                        setState(() {
                          username.text = "";
                          password.text = "";
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage(
                                        uname: suname,
                                        pwd: spwd,
                                      )));
                        });
                      }

                      if (tbox == false) {
                        setState(() {
                          tbox = true;
                        });
                      } else {
                        setState(() {
                          tbox = false;
                        });
                      }
                      if (bclick == false) {
                        ptext = "Set Password";
                      } else {}
                    },
                    child: Text(
                      "$ptext",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Text("$suname + $spwd"),
              ],
            )),
      ),
    );
  }
}
