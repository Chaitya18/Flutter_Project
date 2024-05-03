import 'package:flutter/material.dart';
import 'package:pos/Screen/MyStore.dart';

class AddingItems1 extends StatefulWidget {
  const AddingItems1({
    super.key,
  });

  @override
  State<AddingItems1> createState() => _AddingItems1State();
}

class _AddingItems1State extends State<AddingItems1> {
  TextEditingController _addItemController = TextEditingController();
  TextEditingController _addPriceController = TextEditingController();
  List<String> foodList = [];
  List<int> priceList = [];
  List<String> foodList2 = [];
  List<int> priceList2 = [];
  int currentindex = 0;
  int selectedIndex = 0;
  String eror = "";
  bool bclick = false; //button ternary opertor.

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: EdgeInsets.all(10),
        height: 750,
        // color: Color.fromARGB(255, 6, 18, 67),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            // Adding item section
            TextField(
              controller: _addItemController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Enter item name",
                labelText: "Item name",
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // Adding price of item section
            TextField(
              controller: _addPriceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Enter the price",
                labelText: "Price",
                errorText: eror,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Update or add value button
            SizedBox(
                height: 80,
                width: 180,
                child: bclick
                    ? ElevatedButton(
                        onPressed: () {
                          setState(() {
                            final itemeror = _addItemController.value.text;
                            final priceeror = _addPriceController.value.text;

                            foodList[currentindex] =
                                _addItemController.text.toString();
                            priceList[currentindex] =
                                int.parse(_addPriceController.text);

                            bclick = false;

                            if (itemeror.isEmpty) {
                              setState(() {
                                eror = "Required";
                              });
                            }

                            _addItemController.clear();
                            _addPriceController.clear();
                          });
                        },
                        child: Text("Update"),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          setState(() {
                            final itemeror = _addItemController.value.text;
                            final priceeror = _addPriceController.value.text;

                            foodList.add(_addItemController.text.toString());
                            priceList.add(int.parse(_addPriceController.text));

                            if (itemeror.isEmpty) {
                              setState(() {
                                eror = "Required";
                              });
                            }

                            _addItemController.clear();
                            _addPriceController.clear();
                          });
                        },
                        child: Text("Add"),
                      )),
            Expanded(
              child: ListView.builder(
                itemCount: foodList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(foodList[index]),
                    subtitle: Text("Price: ${priceList[index]}"),
                    trailing: IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        setState(() {
                          currentindex = index;
                          bclick = true;
                          selectedIndex = index;
                          _addItemController.text = foodList[index];
                          _addPriceController.text =
                              priceList[index].toString();
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyStore(
                                foodlist: foodList2,
                                pricelist: priceList2,
                              )));
                  setState(() {
                    foodList2.addAll(foodList);
                    priceList2.addAll(priceList);
                    foodList.clear();
                    priceList.clear();
                  });
                },
                child: Text("Save")),
          ],
        ),
      ),
    );
  }
}
