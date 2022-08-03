import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../resource/text_type.dart';
import '../../../widgets/chip_custom.dart';
import '../../../widgets/slider_custom.dart';

class WidgetRestaurant extends StatefulWidget {
  List<dynamic> list;
  WidgetRestaurant({Key? key, required this.list}) : super(key: key);

  @override
  _WidgetRestaurantState createState() => _WidgetRestaurantState();
}

class _WidgetRestaurantState extends State<WidgetRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Best Picks',
                  style: TextsStyle.titleSection,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Restaurants by team',
                  style: TextsStyle.titleSection,
                ),
              ],
            ),
            Text(
              'See all',
              style: TextsStyle.subTitleLink,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        //section restaurants
        SliderCustom(
          heightBox: 280,
          widthCard: 200,
          heightImage: 200,
          data: widget.list,
        ),
      ],
    );
  }
}
