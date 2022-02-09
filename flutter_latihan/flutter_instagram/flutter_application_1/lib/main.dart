import 'package:flutter/material.dart';
import 'dart:math';
import './widgets/ProfileAvatars.dart';
import './widgets/ProfileBiodata.dart';
import './widgets/TabStory.dart';
import './widgets/ImageStory.dart';
import './widgets/AllStory.dart';
import './widgets/BottomNavigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var random = new Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.lock_outline_rounded,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            title: Row(
              children: [
                Text(
                  "anang.syfrr",
                  style: TextStyle(color: Colors.black),
                ),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: Colors.black,
                )
              ],
            ),
            actions: [
              Icon(Icons.add_box_outlined, color: Colors.black),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.menu, color: Colors.black),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          body: ListView(children: [
            ProfileAvatars(),
            ProfileBiodata(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AllStory(
                      "https://picsum.photos/id/${random.nextInt(1000)}/200/300",
                      "Story 1"),
                  AllStory(
                      "https://picsum.photos/id/${random.nextInt(1000)}/200/300",
                      "Story 2"),
                  AllStory(
                      "https://picsum.photos/id/${random.nextInt(1000)}/200/300",
                      "Story 3"),
                  AllStory(
                      "https://picsum.photos/id/${random.nextInt(1000)}/200/300",
                      "Story 4"),
                  AllStory(
                      "https://picsum.photos/id/${random.nextInt(1000)}/200/300",
                      "Story 5"),
                ],
              ),
            ),
            TabStory(),
            ImageStory(),
          ]),
          bottomNavigationBar: BottomNavigation(),
        ),
      ),
    );
  }
}
