// ignore_for_file: prefer_const_constructors
import 'package:sliding_switch/sliding_switch.dart';

import 'package:flutter/material.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({super.key});

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  bool isVeg = false;
  List vitems = [
    "soup.jpeg",
    "salad.jpeg",
    "veg-starter.jpeg",
    "veg-kebab.jpeg",
    "veg-mcourse.jpeg",
    "bread.jpeg",
    "dal.jpeg",
    "jeera-rice.jpeg",
    "veg-biryani.jpeg",
    "fried-rice.jpeg",
    "pulav.jpeg",
    "pavbhaji.jpeg",
    "dosa.jpeg",
    "veg-noodles.jpeg",
    "paneer-chilli.jpeg",
    "pizza.jpeg",
    "pasta.jpeg",
    "veg-burger.jpeg",
    "sandwich.jpeg",
    "veg-thali.jpeg",
    "A.png"
  ];
  List nvitems = [
    "nonveg-starter.jpeg",
    "nonveg-kebab.jpeg",
    "nonveg-mcourse.jpeg",
    "nonveg-biryani.jpeg",
    "nonveg-noodles.jpeg",
  ];

  //Vegetarian Container
  Widget veg(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
        children: List.generate(
          vitems.length, //Length of the Menu List
          (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyMenu()),
                );
              },
              child: Container(
                height: 300,
                width: double.maxFinite,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(width: 5),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.red, spreadRadius: 6, blurRadius: 20)
                  ],
                  image: DecorationImage(
                    image: AssetImage("images/${vitems[index]}"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  //Non-Vegetarian Container
  Widget Nonveg(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: nvitems.length,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: List.generate(
          nvitems.length, //Length of the Menu List
          (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyMenu()),
                );
              },
              child: Container(
                height: 300,
                width: double.maxFinite,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(width: 5),
                  color: Colors.black,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.red, spreadRadius: 6, blurRadius: 20)
                  ],
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage("images/${nvitems[index]}"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(""),
        iconTheme: IconThemeData(color: Colors.red),
        actions: [
          SlidingSwitch(
            value: isVeg,
            width: 200,
            height: 55,
            animationDuration: Duration(milliseconds: 500),
            onChanged: (value) {
              setState(() {
                isVeg = value;
              });
            },
            onTap: () {},
            onDoubleTap: () {},
            onSwipe: () {},
            textOn: 'NON-VEG',
            textOff: 'VEG',
            colorOn: Colors.black,
            colorOff: Colors.black,
            background: isVeg ? Colors.red : Colors.green,
          ),
        ],
      ),
      body: Container(child: isVeg ? Nonveg(context) : veg(context)),
    );
  }
}
