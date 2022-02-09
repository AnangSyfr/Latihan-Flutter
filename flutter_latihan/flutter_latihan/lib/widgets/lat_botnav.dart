import 'package:flutter/material.dart';

class lat_botnav extends StatefulWidget {
  @override
  State<lat_botnav> createState() => _lat_botnavState();
}

class _lat_botnavState extends State<lat_botnav> {
  @override
  late int index;
  void initState() {
    // TODO: implement initState
    super.initState();
    index = 0;
  }

  @override
  List myContent = [
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(
            size: 200,
          ),
          Text("Home Page")
        ],
      ),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(
            size: 200,
          ),
          Text("Profile Page")
        ],
      ),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(
            size: 200,
          ),
          Text("Logout Page")
        ],
      ),
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FlutterLogo(),
        ),
        title: Text("Flutter App"),
        actions: [
          IconButton(
              onPressed: () {
                print("Klik More");
              },
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: myContent[index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          backgroundColor: Colors.teal,
          selectedItemColor: Colors.white,
          onTap: (value) {
            print(value);
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.people_alt),
            ),
            BottomNavigationBarItem(
              label: "Logout",
              icon: Icon(Icons.logout),
            )
          ]),
    );
  }
}
