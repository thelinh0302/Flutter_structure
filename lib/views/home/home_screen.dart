import 'package:flutter/material.dart';
import '../../data_source/mock_data.dart';
import 'widget/widget_ads.dart';
import 'widget/widget_feature.dart';
import 'widget/widget_introduce.dart';
import 'widget/widget_restaurant.dart';
import 'widget/widget_type.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlideIntro = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              //widget Introduce
              WidgetIntroduce(
                list: images,
                currentSlideIntro: currentSlideIntro,
              ),
              const SizedBox(
                height: 20,
              ),
              WidgetFeature(list: features),
              const SizedBox(
                height: 20,
              ),
              //widget ads
              WidgetAds(),
              const SizedBox(
                height: 20,
              ),
              WidgetRestaurant(
                list: restaurant,
              ),
              // widget type
              const SizedBox(
                height: 20,
              ),
              WidgetType(list: type),
              // Expanded();
            ],
          ),
        ),
      ),
    );
  }
}
