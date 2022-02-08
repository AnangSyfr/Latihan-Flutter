import 'package:flutter/material.dart';

class lat_tabview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: Container(
            child: FlutterLogo(),
            padding: EdgeInsets.all(10),
          ),
          title: Text("Flutter App"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
                onPressed: () {
                  print("Klik More");
                },
                icon: Icon(Icons.more_vert))
          ],
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.camera_enhance),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            ),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Text("Tab Camera")),
          Center(child: Text("Tab Chats")),
          Center(child: Text("Tab Status")),
          Center(child: Text("Tab Calls")),
        ]),
      ),
    );
  }
}
