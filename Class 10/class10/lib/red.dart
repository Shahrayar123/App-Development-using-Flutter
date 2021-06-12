import 'package:flutter/material.dart';

class Red extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.red[300],
      child: Center(
        child: Text("Red Screen",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
      ),
    ));
  }
}
