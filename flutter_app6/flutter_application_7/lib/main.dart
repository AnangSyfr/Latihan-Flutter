import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "name": "Anang Syaifur Rochman",
      "age": "23",
      "favColor": ["Red", "Blue", "Greensea"]
    },
    {
      "name": "John Doe",
      "age": "24",
      "favColor": [
        "Red",
        "Blue",
        "Greensea",
        "Yellow",
        "White",
        "Red",
        "Blue",
        "Greensea",
        "Yellow",
        "White"
      ]
    },
    {
      "name": "Anang Syaifur Rochman",
      "age": "23",
      "favColor": ["Red", "Blue", "Greensea"]
    },
    {
      "name": "Anang Syaifur Rochman",
      "age": "23",
      "favColor": ["Red", "Blue", "Greensea"]
    },
    {
      "name": "Anang Syaifur Rochman",
      "age": "23",
      "favColor": ["Red", "Blue", "Greensea"]
    },
    {
      "name": "Anang Syaifur Rochman",
      "age": "23",
      "favColor": ["Red", "Blue", "Greensea"]
    },
    {
      "name": "Anang Syaifur Rochman",
      "age": "23",
      "favColor": ["Red", "Blue", "Greensea"]
    },
    {
      "name": "Anang Syaifur Rochman",
      "age": "23",
      "favColor": ["Red", "Blue", "Greensea"]
    },
    {
      "name": "Anang Syaifur Rochman",
      "age": "23",
      "favColor": ["Red", "Blue", "Greensea"]
    },
    {
      "name": "Anang Syaifur Rochman",
      "age": "23",
      "favColor": ["Red", "Blue", "Greensea"]
    },
    {
      "name": "Anang Syaifur Rochman",
      "age": "23",
      "favColor": ["Red", "Blue", "Greensea"]
    },
    {
      "name": "Anang Syaifur Rochman",
      "age": "23",
      "favColor": ["Red", "Blue", "Greensea"]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Scroll List View"),
        ),
        body: ListView(
          children: myList.map((data) {
            List favColor = data['favColor'];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              color: Colors.lightGreen,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nama : ${data['name']}"),
                            Text("Umur : ${data['age']}"),
                          ],
                        )
                      ],
                    ),
                    //favColor
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: favColor.map((color) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              padding: EdgeInsets.all(5),
                              color: Colors.amber,
                              child: Text(color),
                            );
                          }).toList()),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
