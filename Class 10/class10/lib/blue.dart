import 'package:flutter/material.dart';

class Blue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
            child: Text(
          "Blue Screen",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        )),
      ),
    );
  }
}
