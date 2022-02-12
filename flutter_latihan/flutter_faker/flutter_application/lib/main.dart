import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    List<Widget> ListWidget = [
      Center(
        child: Text("Menu 1"),
      ),
      Center(
        child: Text("Menu 2"),
      ),
      ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(
                  "https://picsum.photos/id/${50 + index}/200/300"),
            ),
            title: Text("${faker.person.name()}"),
            subtitle: Text(
              "${faker.lorem.sentence()}",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Text("${DateFormat.yMd().format(DateTime.now())}"),
          );
        },
      ),
      Center(
        child: Text("Menu 3"),
      ),
      Center(
        child: Text("Menu 4"),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat List"),
        backgroundColor: Colors.teal,
      ),
      body: ListWidget[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.teal,
        initialActiveIndex: 2,
        items: [
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        onTap: (int i) {
          setState(() {
            currentIndex = i;
          });
        },
      ),
    );
  }
}
