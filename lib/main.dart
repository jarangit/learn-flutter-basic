import 'package:flutter/material.dart';

void main() {
  runApp(MyApp as Widget);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My app",
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Menu bar"),
            ),
            body: const Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("content1"),
                Text("content1"),
                Text("content1"),
              ],
            ))));
  }
}
