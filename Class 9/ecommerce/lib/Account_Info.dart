import 'package:flutter/material.dart';

class AccountInfo extends StatefulWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
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
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 10,
            child: Container(
              width: 200,
              height: 200,
              // color: Colors.red,
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://lh3.googleusercontent.com/proxy/Rwya0hw9prMRapVHqVDDNHYtDRWLQXRL0hckR9WNaXAtunMiJx9Ur5cFl4yqnU5phAu13h5UybbVwYKz37HFI-7-oUDWtSmuPAw0-mBTBcKeS2yzfndteSD-Jbwk2ac")),
            ),
          ),
          Positioned(
            right: 40,
            top: 60,
            child: Container(
              width: 180,
              height: 100,
              // color: Colors.red,
              child: ListTile(
                title: Text(
                  "User",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "abc@example.com",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Positioned(
            left: 230,
            top: 140,
            child: Container(
              height: 50,
              width: 80,
              // color: Colors.red,
              child: Text(
                "logout",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
            ),
          ),
          Positioned(
              left: 30,
              top: 250,
              child: Container(
                  height: 30,
                  width: 250,
                  // color: Colors.red,
                  child: Text(
                    "ACCOUNT INFORMATION",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ))),
          Positioned(
            left: 30,
            top: 300,
            child: Container(
              height: 30,
              width: 250,
              child: ListTile(
                title: Text(
                  "Full Name",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("User"),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 360,
            child: Container(
              height: 30,
              width: 250,
              child: ListTile(
                title: Text(
                  "Email",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("user@gmail.com"),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 420,
            child: Container(
              height: 30,
              width: 250,
              child: ListTile(
                title: Text(
                  "Phone",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("+0900-78601"),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 480,
            child: Container(
              height: 30,
              width: 250,
              child: ListTile(
                title: Text(
                  "Address",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("New York"),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 540,
            child: Container(
              height: 30,
              width: 250,
              child: ListTile(
                title: Text(
                  "Gender",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Male"),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 590,
            child: Container(
              height: 30,
              width: 250,
              child: ListTile(
                title: Text(
                  "Date of Birth",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("October 13, 1999"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
