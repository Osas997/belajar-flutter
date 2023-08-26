import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? _currentTime;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now().toString();
    // Atur timer untuk memperbarui waktu setiap detik
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() {
        _currentTime = DateFormat.yMMMMEEEEd().add_Hms().format(DateTime.now());
      });
    });
  }

  @override
  void dispose() {
    _timer!
        .cancel(); // Pastikan untuk membatalkan timer saat tidak diperlukan lagi
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Date Time"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Sekarang Tanggal : ", style: TextStyle(fontSize: 20)),
              Text(
                _currentTime.toString(),
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
