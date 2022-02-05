import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Widget> myData = const [
    Text("Anang Syaifur R"),
    Text("Joey Jordison"),
    Text("Jimmy Sullivan"),
    Text("Dave Mackintosh"),
    Text("Mike Portnoy"),
    Text("Arin Ilejay"),
    Text("Gie Anzalone"),
    Text("Dave Lombardo"),
    Text("Synyster Gates"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),
      body: ListView.builder(
        itemCount: myData.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(),
            title: myData[index],
            subtitle: const Text("This is subtitle..."),
            trailing: const Text("10.01 AM"),
          );
        },
      ),
    ));
  }
}
