import 'package:flutter/material.dart';
import 'teamproject/best.dart';
import 'teamproject/oat.dart';
import 'teamproject/pom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Team Showcase")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: const [Member1(), Member2(), Member3()]),
        ),
      ),
    );
  }
}
