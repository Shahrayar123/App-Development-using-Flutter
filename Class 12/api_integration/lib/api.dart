import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  @override
  _ApiState createState() => _ApiState();
}

class _ApiState extends State<Api> {
  Future<List<UserInformation>> getData() async {
    List<UserInformation> users_info_list = [];

    var data = await http.get(Uri.parse(
        "http://www.json-generator.com/api/json/get/cahDxgaBea?indent=2"));

    var json_data = jsonDecode(data.body);

    for (var user in json_data) {
      UserInformation user_obj = UserInformation(
          user['picture'], user['name'], user['company'], user['balance']);

      users_info_list.add(user_obj);
    }

    return users_info_list;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: getData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(
                    child: Container(
                  child: Text("Something wents wrong"),
                ));
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: snapshot.data[index].picture,
                        title: snapshot.data[index].name,
                        subtitle: snapshot.data[index].company,
                        trailing: snapshot.data[index].data.balance,
                      );
                    });
              }
            }));
  }
}

class UserInformation {
  var name, company, picture, balance;

  UserInformation(this.picture, this.name, this.company, this.balance);
}
