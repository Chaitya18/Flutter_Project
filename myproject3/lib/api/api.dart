import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Album {
  int? id;
  String? email;
  String? first_name;
  String? last_name;
  String? avatar;
  Album(
      {required this.id,
      required this.email,
      required this.first_name,
      required this.last_name,
      required this.avatar});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        id: json['id'],
        email: json['email'],
        first_name: json['first_name'],
        last_name: json['last_name'],
        avatar: json['avatar']);
  }
}

class MyApi extends StatefulWidget {
  const MyApi({super.key});

  @override
  State<MyApi> createState() => _MyApiState();
}

class _MyApiState extends State<MyApi> {
  Future<void> fetchdata() async {
    final response = await http
        .post(Uri.parse("https://reqres.in/api/users"), body: {"id": "7"});
    if (response.statusCode == 201) {
      print("Record Added");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchdata().then((value) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*body: ListView.builder(
        itemCount: albumlist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(border: Border.all(width: 10)),
              child: ListTile(
                leading: Text("${albumlist[index].id}"),
                title: Text("${albumlist[index].email}"),
                subtitle: Text("${albumlist[index].first_name}"),
                trailing: Image.network("${albumlist[index].avatar}"),
              ),
            ),
          );
        },
      ),*/
        );
  }
}
