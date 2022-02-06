import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class soal_23 extends StatelessWidget {
  const soal_23({
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
        body: Column(
          children: [
            Container(
              height: 130,
              padding: EdgeInsets.symmetric(vertical: 10),
              // color: Colors.black12,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipOval(
                                child: Container(
                                  width: 90,
                                  height: 90,
                                  color: Colors.blue,
                                ),
                              ),
                              Container(
                                width: 85,
                                height: 85,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  border:
                                      Border.all(color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.circular(300 / 2),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://picsum.photos/id/${index}/200/300"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(faker.person.firstName())
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.bottomLeft,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://picsum.photos/id/${index + 100}/500/300",
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          margin: EdgeInsets.only(bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.pink,
                                  ),
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.comment,
                                    color: Colors.black38,
                                  ),
                                  SizedBox(width: 300),
                                  Icon(
                                    Icons.more_vert,
                                    color: Colors.black38,
                                  ),
                                ],
                              ),
                              Text(
                                faker.person.name(),
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              Text(
                                faker.lorem.sentences(3).join(' '),
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87),
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  }),
            ),
          ],
        ));
  }
}
