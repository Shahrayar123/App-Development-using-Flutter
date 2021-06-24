import 'package:flutter/material.dart';

import 'calculator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: (Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Calculator App",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
            backgroundColor: Color(0xff232F34),
            shadowColor: Colors.white,
          ),
          body: Calculator(),
        )));
  }
}
