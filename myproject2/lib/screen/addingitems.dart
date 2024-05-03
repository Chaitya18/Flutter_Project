import 'package:flutter/material.dart';

class AddingItems extends StatefulWidget {
  const AddingItems({super.key});

  @override
  State<AddingItems> createState() => _AddingItemsState();
}

class _AddingItemsState extends State<AddingItems> {
  TextEditingController _additemcontroller = TextEditingController();
  TextEditingController _addpricecontroller = TextEditingController();
  List? FoodList = [];
  int? updateindex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aapni dukan"),
        backgroundColor: Colors.grey[600],
      ),
      body: Column(
        children: [
          Container(
            height: 650,
            color: Colors.grey,
            child: Card(
              child: Center(
                child: Column(
                  children: [
                    // adding item section
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        child: TextField(
                          controller: _additemcontroller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "enter item name",
                            labelText: "item name",
                          ),
                        ),
                      ),
                    ),
                    //adding price of item section
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        child: TextField(
                          controller: _addpricecontroller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "enter the price",
                            labelText: "price",
                          ),
                        ),
                      ),
                    ),
                    //update or reset value button
                    updateindex != null
                        ? ElevatedButton(
                            onPressed: () {
                              FoodList![updateindex!] =
                                  _additemcontroller.text.toString();
                              FoodList![updateindex!] = int.parse(
                                  _addpricecontroller.value.text.toString());
                            },
                            child: Text("Update"))
                        :
                        //button to add in list
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                FoodList!
                                    .add(_additemcontroller.text.toString());
                                FoodList!.add(int.parse(
                                    _addpricecontroller.value.text.toString()));
                                print(FoodList);
                                _additemcontroller.text = "";
                                _addpricecontroller.clear();
                              });
                            },
                            child: Text("Add")),
                    Expanded(
                        child: ListView.builder(
                      itemCount: FoodList!.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 150,
                          color: Colors.grey[300],
                          child: Card(
                            elevation: 20,
                            margin: EdgeInsets.all(20),
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(FoodList![index]),
                                  ),
                                  Container(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(""),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
