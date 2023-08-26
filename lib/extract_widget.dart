import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("extract widget"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 20, itemBuilder: (context, index) => const ItemChat()),
      ),
    );
  }
}

class ItemChat extends StatelessWidget {
  const ItemChat({super.key, this.name, this.sub});

  final String? name;
  final String? sub;

  @override
  Widget build(BuildContext context) {
    var faker = Faker();
    return ListTile(
      // contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      leading: const CircleAvatar(
        backgroundImage: NetworkImage("https://picsum.photos/200/300"),
      ),
      title: Text(faker.person.name()),
      subtitle: Text(faker.lorem.sentence()),
      trailing: const Text("10.00"),
    );
  }
}
