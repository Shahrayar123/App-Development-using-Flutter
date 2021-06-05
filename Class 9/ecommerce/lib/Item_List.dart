import 'package:flutter/material.dart';

class ItemsList extends StatefulWidget {
  const ItemsList({Key? key}) : super(key: key);

  @override
  _ItemsListState createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Ecom App UI",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          backgroundColor: Color(0xff3944F7),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: Align(
          alignment: Alignment.center,
          child: Text("This Page in Under Construction",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ));
  }
}
