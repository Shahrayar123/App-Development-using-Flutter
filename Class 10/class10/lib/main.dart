import 'package:flutter/material.dart';

import 'blue.dart';
import 'red.dart';
import 'user_choice.dart';
import 'yellow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Tab Controller Example")),
            backgroundColor: Color(0xff2c3e50),
            bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.white,
              tabs: [
                Text("Blue"),
                Text("Red"),
                Text("Yellow"),
                Text("Set State Example")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Blue(),
              Red(),
              Yellow(),
              UserChoice(),
            ],
          ),
        ),
      ),
    );
  }
}
