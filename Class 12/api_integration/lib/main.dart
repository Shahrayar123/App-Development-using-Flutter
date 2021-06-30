import 'package:flutter/material.dart';
import 'api.dart';

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
              "API Integration",
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: Api(),
      )),
    );
  }
}
