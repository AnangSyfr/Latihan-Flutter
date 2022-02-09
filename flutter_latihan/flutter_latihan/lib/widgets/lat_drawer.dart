import 'package:flutter/material.dart';

class lat_drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        actions: [
          IconButton(
              onPressed: () {
                print("Klik More");
              },
              icon: Icon(Icons.more_vert))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              height: 100,
              color: Colors.blue,
              child: Text(
                "DASHBOARD MENU",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
