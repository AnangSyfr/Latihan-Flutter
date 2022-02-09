import 'package:flutter/material.dart';

class ProfileAvatars extends StatelessWidget {
  const ProfileAvatars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(children: [
        Stack(alignment: Alignment.center, children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Colors.amber]),
            ),
          ),
          Container(
            width: 94,
            height: 94,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      NetworkImage("https://picsum.photos/200/300?grayscale"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(47),
              color: Colors.grey,
              border: Border.all(width: 5, color: Colors.white),
            ),
          ),
        ]),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              children: [
                Text(
                  "9",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Postingan",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "109",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Pengikut",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "77",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Mengikuti",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ]),
        ),
      ]),
    );
  }
}
