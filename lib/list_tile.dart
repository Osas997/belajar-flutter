// membuat components chat

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "List tile",
      home: Scaffold(
        body: ListView(
          children: const [
            ListTile(
              // contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
              title: Text("Hello Word"),
              subtitle: Text("ini adalah subtitle"),
              leading: CircleAvatar(),
              trailing: Text("10.00"),
            ),
            Divider(),
            ListTile(
              // contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
              title: Text("Hello Word"),
              subtitle: Text("ini adalah subtitle"),
              leading: CircleAvatar(),
              trailing: Text("10.00"),
            ),
            Divider(),
            ListTile(
              // contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
              title: Text("Hello Word"),
              subtitle: Text("ini adalah subtitle"),
              leading: CircleAvatar(),
              trailing: Text("10.00"),
            ),
            Divider(),
          ],
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("List Tile"),
          backgroundColor: Colors.amberAccent,
        ),
      ),
    );
  }
}
