import 'package:flutter/material.dart';
import 'api.dart';

class UserDetail extends StatelessWidget {
  final UserInformation user;

  UserDetail(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[300],
        title: Center(
            child: Text(
          user.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 120,
            top: 10,
            child: Container(
              width: 200,
              height: 200,
              // color: Colors.red,
              child: CircleAvatar(backgroundImage: NetworkImage(user.picture)),
            ),
          ),
          Positioned(
              left: 30,
              top: 250,
              child: Container(
                  height: 30,
                  width: 250,
                  // color: Colors.red,
                  child: Text(
                    "ACCOUNT INFORMATION",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ))),
          Positioned(
            left: 30,
            top: 300,
            child: Container(
              height: 30,
              width: 250,
              child: ListTile(
                title: Text(
                  "Full Name",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(user.name),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 360,
            child: Container(
              height: 30,
              width: 250,
              child: ListTile(
                title: Text(
                  "Age",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("${user.age}"),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 420,
            child: Container(
              height: 30,
              width: 250,
              child: ListTile(
                title: Text(
                  "Company",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(user.company),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 480,
            child: Container(
              height: 30,
              width: 250,
              child: ListTile(
                title: Text(
                  "Address",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(user.address),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 540,
            child: Container(
              height: 30,
              width: 250,
              child: ListTile(
                title: Text(
                  "Gender",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(user.gender),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 590,
            child: Container(
              height: 30,
              width: 250,
              child: ListTile(
                title: Text(
                  "Total Balance",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(user.balance),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
