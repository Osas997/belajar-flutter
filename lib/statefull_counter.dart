import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "StateFull Wiget",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 1;

  void incrementCounter() {
    setState(() {
      if (counter < 100) {
        counter++;
      }
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StateFull"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(children: [
            const Text(
              "Counter Saat Ini :",
              style: TextStyle(fontSize: 40),
            ),
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 50 + counter.toDouble()),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () => incrementCounter(),
                  child: const Icon(
                    Icons.add,
                    size: 50,
                  )),
              ElevatedButton(
                  onPressed: () => decrementCounter(),
                  child: const Icon(
                    Icons.remove,
                    size: 50,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
