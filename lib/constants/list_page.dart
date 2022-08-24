import 'package:flutter/material.dart';

import '../resource/text_type.dart';
import '../views/home/home_screen.dart';
import '../views/home/search_screen.dart';

class ListPage extends StatelessWidget {
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    SearchScreen(),
    SearchScreen(),
  ];
  const ListPage(
      {Key? key,
      required this.title,
      required this.page,
      this.subTitle,
      this.onPush})
      : super(key: key);
  final String title;
  final bool? subTitle;
  final int page;
  final ValueChanged<int>? onPush;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              title,
              style: TextsStyle.subTitleLink,
            ),
            subTitle == true
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('San Francisco', style: TextsStyle.titleAppBar),
                      const Icon(
                        Icons.arrow_drop_down,
                        size: 20,
                      ),
                    ],
                  )
                : Container()
          ],
        ),
      ),
      body: _widgetOptions[page],
    );
  }
}
