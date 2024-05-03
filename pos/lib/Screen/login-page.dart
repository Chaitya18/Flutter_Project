import 'package:flutter/material.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 258,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFF8E24AA), Color(0xFFFB8C00)])),
              ),
              Expanded(
                child: Container(
                    height: 473,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(179, 183, 180, 180),
                    )),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 600,
              width: 405,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Image.asset(
                    "new_images/logo.png",
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 12, left: 12, right: 12),
                    child: TextField(
                      controller: username,
                      decoration: InputDecoration(
                        hintText: "Username",
                        labelText: "Username",
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextField(
                      controller: password,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "Password",
                        labelText: "Password",
                        suffixIcon: IconButton(
                          icon: Icon(Icons.visibility),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: ListTile(
                      trailing: GestureDetector(
                        child: Text(
                          "Forget Your password?",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 43,
                      width: 310,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          gradient: LinearGradient(
                              colors: [Color(0xFF8E24AA), Color(0xFFFB8C00)])),
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Text(
                      "Or Sign Up with Social Account",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          child: Container(
                        margin: EdgeInsets.all(12),
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          "new_images/fb.jpeg",
                          fit: BoxFit.contain,
                        ),
                      )),
                      GestureDetector(
                          child: ClipOval(
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            "new_images/twitter.jpeg",
                            fit: BoxFit.contain,
                          ),
                        ),
                      )),
                      GestureDetector(
                          child: Container(
                        margin: EdgeInsets.all(12),
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          "new_images/google.png",
                          fit: BoxFit.contain,
                        ),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
