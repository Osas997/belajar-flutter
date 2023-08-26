import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("NAVBAR")),
        body: const Center(
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi fugiat, perspiciatis assumenda suscipit repellat consequatur ipsum laborum, unde quasi aut neque labore eveniet. Unde voluptate labore dolorum expedita beatae soluta deserunt sint. Eveniet, rem nam! Nesciunt atque facere voluptatem quidem illum voluptas? Provident voluptatibus, sit nesciunt non similique quo fugit.",
            textAlign: TextAlign.center,
            // maxLines: 2,
            // overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                // decoration: TextDecoration.underline,
                color: Colors.deepOrange,
                fontStyle: FontStyle.italic,
                fontSize: 16,
                fontFamily: "Poppins",
                wordSpacing: 5,
                height: 2),
          ),
        ),
      ),
    );
  }
}
