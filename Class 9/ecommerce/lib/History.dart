import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Username",
                  prefixIcon: Icon(Icons.search)),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 30,
                width: 80,
                // color: Colors.red,
                child: Text(
                  "History",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            place_item(
                "Iphone 12",
                "https://cdn.mos.cms.futurecdn.net/Gj4BpxWHmrcvZmjaW9nmwf.jpg",
                "10 dollar",
                "⭐ 5.0 (23 Reviews)"),
            place_item(
                "Note 20 Ultra",
                "https://ambalama.nl/images/1771107283_ankara-replika-telefon-sat.jpg",
                "10",
                "⭐ 5.0 (23 Reviews)"),
            place_item(
                "Mac Book air",
                "https://www.bizimhaber.net/wp-content/uploads/2020/09/replika-cakma-cin-mali-galaxy-note-20.jpg",
                "10",
                "⭐ 5.0 (23 Reviews)"),
            place_item(
                "MAc Book Pro",
                "https://cdn-2.tstatic.net/wartakota/foto/bank/images/apple-macbook-pro-m1_011.jpg",
                "10",
                "⭐ 5.0 (23 Reviews)"),
            place_item(
                "Gaming PC",
                "https://www.digitweek.com/wp-content/uploads/2021/04/gaming-pc.jpeg",
                "10",
                "⭐ 5.0 (23 Reviews)"),
            place_item(
                "Backlit Keyboard",
                "https://thumbs.dreamstime.com/b/close-up-laptop-keyboard-backlight-blue-backlit-177498058.jpg",
                "10",
                "⭐ 5.0 (23 Reviews)"),
            place_item(
                "Note 20 Ultra",
                "https://i.pinimg.com/474x/a0/55/20/a05520c4aab268369eead6484bc247d9.jpg",
                "10",
                "⭐ 5.0 (23 Reviews)"),
            place_item(
                "Note 20 Ultra",
                "https://www.teknoloji6.com/wp-content/uploads/2016/10/Replika-Samsung-Galaxy-Note-4-imei-De%C4%9Fi%C5%9Ftirme.jpg",
                "10",
                "⭐ 5.0 (23 Reviews)"),
            place_item(
                "Note 20 Ultra",
                "https://frankfurt.apollo.olxcdn.com/v1/files/w2p6pbb3vde5-BG/image;s=585x461;r=180",
                "10",
                "⭐ 5.0 (23 Reviews)"),
          ],
        ),
      ),
    );
  }
}

// custom widget
Widget place_item(title, img_path, price, subtitle) {
  return ListTile(
    leading: CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(img_path),
    ),
    title: Text(title),
    subtitle: Text(subtitle),
    trailing: Text(price),
  );
}
