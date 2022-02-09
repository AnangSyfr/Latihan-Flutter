import 'package:flutter/material.dart';

class TabStory extends StatelessWidget {
  const TabStory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(indicatorColor: Colors.black, tabs: [
      Tab(
        icon: Icon(
          Icons.grid_on,
          color: Colors.black,
        ),
      ),
      Tab(
        icon: Icon(
          Icons.contacts,
          color: Colors.black,
        ),
      )
    ]);
  }
}
