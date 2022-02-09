import 'package:flutter/material.dart';
import 'dart:math';

class ImageStory extends StatelessWidget {
  var random = new Random();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 12,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
      itemBuilder: (context, index) => Image.network(
        "https://picsum.photos/id/${random.nextInt(500)}/200/300",
        fit: BoxFit.cover,
      ),
    );
  }
}
