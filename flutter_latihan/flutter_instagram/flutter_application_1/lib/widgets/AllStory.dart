import 'package:flutter/material.dart';

class AllStory extends StatelessWidget {
  final String imageStory;
  final String captionStory;

  AllStory(this.imageStory, this.captionStory);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(alignment: Alignment.center, children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Container(
            width: 84,
            height: 84,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageStory), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(42),
              color: Colors.grey,
              border: Border.all(width: 5, color: Colors.white),
            ),
          ),
        ]),
        Text(captionStory),
      ],
    );
  }
}
