import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as conn;
import '../models/SummaryModel.dart';
import '../widget/summary.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SummaryModel dataSummary;

  Future getSummary() async {
    var res = await conn.get(Uri.parse("https://covid19.mathdro.id/api"));
    Map<String, dynamic> data = json.decode(res.body) as Map<String, dynamic>;
    dataSummary = SummaryModel.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Covid 19 Tracker"),
        actions: [
          IconButton(
              onPressed: () {
                getSummary();
                setState(() {});
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: FutureBuilder(
          future: getSummary(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Text("Loading....."),
              );
            } else {
              return ListView(
                children: [
                  Container(
                    color: Colors.grey,
                    child: Image.network("https://covid19.mathdro.id/api/og"),
                  ),
                  SizedBox(height: 10),
                  Summary(
                    title: "Confirmed",
                    value: "${dataSummary.confirmed.value}",
                    color: Colors.amber,
                  ),
                  SizedBox(height: 10),
                  Summary(
                    title: "Recovered",
                    value: "${dataSummary.recovered.value}",
                    color: Colors.green,
                  ),
                  SizedBox(height: 10),
                  Summary(
                    title: "Deaths",
                    value: "${dataSummary.deaths.value}",
                    color: Colors.red,
                  ),
                  SizedBox(height: 20),
                  Center(child: Text("Last Update ${dataSummary.lastUpdate}")),
                  SizedBox(height: 20),
                ],
              );
            }
          }),
    );
  }
}
