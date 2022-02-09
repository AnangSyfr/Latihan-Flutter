import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 0,
      items: [
        BottomNavigationBarItem(
            label: "Home", icon: Icon(Icons.home, color: Colors.black)),
        BottomNavigationBarItem(
            label: "Search", icon: Icon(Icons.search, color: Colors.black)),
        BottomNavigationBarItem(
            label: "Add",
            icon: Icon(Icons.add_box_outlined, color: Colors.black)),
        BottomNavigationBarItem(
            label: "Love", icon: Icon(Icons.favorite, color: Colors.pink)),
        BottomNavigationBarItem(
          label: "Avatar",
          icon: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      NetworkImage("https://picsum.photos/200/300?grayscale"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey,
              border: Border.all(width: 5, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
