import 'package:flutter/material.dart';

import 'Account_Info.dart';
import 'History.dart';
import 'Item_List.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.7,
            // color: Colors.pink,
            margin: EdgeInsets.all(80),
            child: Text(
              "Welcome to Ecommerce App! Where you want to navigate?",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccountInfo()));
            },
            child: Text("Account Information"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff3944F7))),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ItemsList()));
            },
            child: Text("Items List"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff3944F7))),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => History()));
            },
            child: Text("History"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff3944F7))),
          ),
        ],
      ),
    );
  }
}
