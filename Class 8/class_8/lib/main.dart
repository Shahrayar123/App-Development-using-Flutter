import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: (Scaffold(
            backgroundColor: Colors.white70,
            appBar: AppBar(
              title: Text("Simple Login App"),
              backgroundColor: Colors.black87,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login Page",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Made By Shahrayar",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Container(
                    height: 70,
                    width: 210,
                    // color: Colors.blueGrey,
                    child: TextField(
                      maxLength: 30,
                      decoration: InputDecoration(
                        labelText: "User Name",
                        hintText: "Enter User Name",
                        hintMaxLines: 2,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 50,
                  width: 210,
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: 'Enter Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 50,
                  width: 210,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                    height: 40,
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Login"),
                    ))
              ],
            ))));
  }
}
