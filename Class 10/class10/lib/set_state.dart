import 'package:flutter/material.dart';

class UserChoice extends StatefulWidget {
  @override
  _UserChoiceState createState() => _UserChoiceState();
}

class _UserChoiceState extends State<UserChoice> {
  var number = 0;

  increment() {
    setState(() {
      number += 1;
    });
  }

  decrement() {
    setState(() {
      number -= 1;
    });
  }

  set_default() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Number is: $number",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: increment, child: Text("Increment")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: decrement, child: Text("Decrement")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: set_default, child: Text("Default"))
          ],
        ),
      ),
    );
  }
}
