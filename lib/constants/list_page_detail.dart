import 'package:flutter/material.dart';

class ListPageDetail extends StatelessWidget {
  ListPageDetail({required this.color, required this.title});
  final MaterialColor color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: const Text(
          'Detail page',
        ),
      ),
      body: const Text('page detial'),
    );
  }
}
