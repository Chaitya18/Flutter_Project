// ignore_for_file: must_be_immutable, empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:pos/Screen/Forget-Password.dart';
import 'package:pos/Screen/dashboard.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key, this.uname, this.pwd}) {}
  dynamic pwd;
  dynamic uname;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void adddata() {
    accounts.addAll({widget.uname.toString(), widget.pwd.toString()} as Map);
  }

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  Map accounts = {1: 2};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 18, 67),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 580,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.all(12),
            child: Container(
              margin: EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //logo

                  //logo
                  TextField(
                    controller: username,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "  Username",
                        labelText: "Username",
                        hintStyle: TextStyle(color: Colors.grey),
                        labelStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: password,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "  Password",
                      labelText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      labelStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      onPressed: () {
                        if (username.text.toString() == "1" &&
                            password.text.toString() == "2") {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyDashboard(),
                              ),
                            );
                          });
                        } else if (username.text.toString() == "" &&
                            password.text.toString() == "") {
                          print('Invalid credentials');
                        }

                        setState(() {
                          adddata();
                        });
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyForgetPassword()));
                    },
                    child: new Text(
                      "Forget Password",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Hii");
                    },
                    child: new Text("Not a Member? Sign Up"),
                  ),
                  Text("$accounts"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
