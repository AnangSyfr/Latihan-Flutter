import 'package:flutter/material.dart';

class lat_tabview2 extends StatefulWidget {
  @override
  State<lat_tabview2> createState() => _lat_tabview2State();
}

class _lat_tabview2State extends State<lat_tabview2>
    with TickerProviderStateMixin {
  late TabController tabC = TabController(length: 4, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        bottom: TabBar(controller: tabC, tabs: [
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
      body: TabBarView(controller: tabC, children: [
        Center(child: Text("Tab Camera")),
        Center(child: Text("Tab Chats")),
        Center(child: Text("Tab Status")),
        Center(child: Text("Tab Calls")),
      ]),
    );
  }
}
