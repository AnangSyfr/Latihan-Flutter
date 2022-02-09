import 'package:flutter/material.dart';

class ProfileBiodata extends StatelessWidget {
  const ProfileBiodata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Anang Syaifur",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("IT Enthusiast"),
          Text(
            "https://github.com/AnangSyfr",
            style: TextStyle(color: Colors.blue),
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              OutlinedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
