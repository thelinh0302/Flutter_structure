import 'package:flutter/material.dart';

import '../views/home/home_screen.dart';
import '../views/home/search_screen.dart';

class ListPage extends StatelessWidget {
  List pages = [HomeScreen(), SearchScreen()];
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
  ];
  ListPage({Key? key, required this.title, this.onPush}) : super(key: key);
  final String title;
  final ValueChanged<int>? onPush;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: IndexedStack(
        children: _widgetOptions,
      ),
    );
  }
}
