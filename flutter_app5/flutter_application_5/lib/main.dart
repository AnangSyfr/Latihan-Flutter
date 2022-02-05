import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Test App"),
        ),
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ChatItem(
              "https://picsum.photos/id/$index/200/300",
              faker.person.name(),
              faker.lorem.sentence(),
            );
          },
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  ChatItem(this.imageUrl, this.title, this.subtitle, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.green),
      ),
      subtitle: Text(
        subtitle,
        maxLines: 2,
        textAlign: TextAlign.justify,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text("10.00 AM"),
    );
  }
}
