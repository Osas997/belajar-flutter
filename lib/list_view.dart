// membuat list component / generate component

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> myColor = [
      Colors.amberAccent,
      Colors.blueAccent,
      Colors.redAccent,
      Colors.blueGrey
    ];

    List<Widget> myHeight = List.generate(
        50,
        (index) => Container(
              height: 50,
              color: Colors.amberAccent,
            ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("List View")),
        body: ListView.builder(
          itemCount: myColor.length,
          itemBuilder: (context, index) => Container(
            height: 300,
            color: myColor[index],
          ),
        ),
      ),
    );
  }
}
