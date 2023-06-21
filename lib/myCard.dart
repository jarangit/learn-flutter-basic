import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  String title;

  MyCard({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Text('$title');
  }
}
