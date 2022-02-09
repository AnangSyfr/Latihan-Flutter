import 'package:flutter/material.dart';

class lat_botsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("Flutter App"),
        actions: [
          IconButton(
              onPressed: () {
                print("Klik More");
              },
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isDismissible: false,
                builder: (context) => Container(
                      height: 120,
                      child: ListView(
                        children: [
                          ListTile(
                            leading: Icon(Icons.share),
                            title: Text("Share"),
                          ),
                          ListTile(
                            leading: Icon(Icons.cancel),
                            title: Text("Cancel"),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      ),
                    ));
          },
          child: Text("Bottom Sheet"),
        ),
      ),
    );
  }
}
