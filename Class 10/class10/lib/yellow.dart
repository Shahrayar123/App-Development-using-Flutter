import 'package:flutter/material.dart';

class Yellow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.yellow,
      child: Center(
        child: Text("Yellow Screen",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
      ),
    ));
  }
}
