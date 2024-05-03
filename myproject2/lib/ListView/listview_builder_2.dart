import 'package:flutter/material.dart';

class MyListView2 extends StatefulWidget {
  const MyListView2({super.key});

  @override
  State<MyListView2> createState() => _MyListView2State();
}

class _MyListView2State extends State<MyListView2> {
  List subject = [];
  TextEditingController _subject = TextEditingController();
  int? updateindex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                controller: _subject,
                decoration:
                    InputDecoration(hintText: "Hi", labelText: "Subject"),
              )),
          updateindex != null
              ? ElevatedButton(
                  onPressed: () {
                    setState(() {
                      subject[updateindex!] = _subject.text.toString();
                      updateindex = null;
                      _subject.text = "";
                    });
                  },
                  child: Text("Update"))
              : ElevatedButton(
                  onPressed: () {
                    setState(() {
                      subject.add(_subject.text.toString());
                      _subject.text = "";
                    });
                  },
                  child: Text("Add")),
          Expanded(
              child: ListView.builder(
            itemCount: subject.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(12),
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.orange,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _subject.text = subject[index];
                      updateindex = index;
                      print("Selected index $updateindex");
                    });
                  },
                  onLongPress: () {
                    print("========>${subject[index]}");
                    setState(() {
                      subject.removeAt(index);
                    });
                  },
                  child: Card(
                    elevation: 20,
                    margin: EdgeInsets.all(8),
                    child: Center(
                        child: Text(
                      subject[index],
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
