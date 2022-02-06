import 'package:flutter/material.dart';

class soal_19 extends StatelessWidget {
  const soal_19({
    Key? key,
  }) : super(key: key);

  @override
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
      body: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: 50,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.bottomLeft,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://picsum.photos/id/${index}/200/300",
                        ))),
                child: Text(
                  "Hello ${index + 1}",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            );
          }),
    );
  }
}
