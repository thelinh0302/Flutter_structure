import 'package:flutter/material.dart';

class WidgetAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/Banner.png'),
        ),
      ),
    );
  }
}
