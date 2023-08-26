import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Map<String, dynamic>> datas = [
    {
      "name": "Muhammad Ariq",
      "umur": 45,
      "color": [
        "Black",
        "Yellow",
        "Blue",
        "Black",
        "Yellow",
        "Blue",
        "Black",
        "Yellow",
        "Blue"
      ]
    },
    {
      "name": "Rendi Kopling",
      "umur": 25,
      "color": ["Red", "Yellow", "Amber"]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mapping",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mapping"),
          centerTitle: true,
        ),
        body: ListView(
          children: datas
              .map((data) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.amberAccent,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Column(
                                  children: [
                                    Text(data["name"]),
                                    Text("Umur ${data['umur']}")
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.from(data["color"])
                                  .map((e) => Container(
                                        margin: const EdgeInsets.only(
                                            right: 10, top: 10),
                                        padding: const EdgeInsets.all(5),
                                        color: Colors.blueAccent,
                                        child: Text(e),
                                      ))
                                  .toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
