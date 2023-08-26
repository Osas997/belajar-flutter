import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Image",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image Widget"),
          centerTitle: true,
        ),
        body: const Center(
          child: ImageContainer(),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      color: Colors.amberAccent,
      child: //Image.network("https://picsum.photos/300/300",
          Image.asset(
        "images/image.jpg",
        alignment: Alignment.centerRight,
        fit: BoxFit.cover,
      ),
    );
  }
}
