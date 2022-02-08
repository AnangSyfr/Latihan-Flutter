import 'package:flutter/material.dart';

class lat_dropdown extends StatefulWidget {
  @override
  State<lat_dropdown> createState() => _lat_dropdownState();
}

class _lat_dropdownState extends State<lat_dropdown> {
  @override
  final List myItems = [
    {"id": 1, "text": "Pilihan A", "value": "A"},
    {"id": 2, "text": "Pilihan B", "value": "B"},
    {"id": 3, "text": "Pilihan C", "value": "C"},
  ];

  late int dataList = myItems[0]['id'];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: FlutterLogo(),
          padding: EdgeInsets.all(10),
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
      body: Center(
        child: DropdownButton(
          value: dataList,
          items: myItems
              .map(
                (e) => DropdownMenuItem(
                  child: Text(e["text"]),
                  value: e["id"] as int,
                ),
              )
              .toList(),
          onChanged: (value) {
            print(value);
            dataList = value as int;
            setState(() {});
          },
        ),
      ),
    );
  }
}
