import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:structure/resource/button_responsive.dart';
import 'package:structure/resource/colors_data.dart';
import 'package:structure/resource/size_config.dart';
import 'package:structure/resource/text_type.dart';

import '../../../resource/constant.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _Body();
}

class _Body extends State<Body> {
  int currentPage = 0;
  var images = {
    "intro1.png":
        "Order from the best local restaurants with easy, on-demand delivery.",
    "intro2.png":
        "Free delivery for new customers via Apple Pay and others payment methods.",
    "intro3.png":
        "Easily find your type of food craving and you’ll get delivery in wide range."
  };
  List title = [
    "All your favorites",
    "Free delivery offers",
    "Choose your food"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                  onPageChanged: ((value) => setState(() {
                        currentPage = value;
                      })),
                  itemCount: images.length,
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        Spacer(),
                        Image.asset(
                          "assets/images/${images.keys.elementAt(index)}",
                          height: getProportionateScreenHeight(265),
                          width: getProportionateScreenWidht(285),
                        ),
                        SizedBox(height: 80),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: [
                                  Text(title[index], style: TextsStyle.title),
                                  SizedBox(height: 10),
                                  Text(images.values.elementAt(index),
                                      style: TextsStyle.subTitle,
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  }),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidht(20)
                  ),
                  child: Column(
                    children: [
                      Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(3, (indexSlider) {
                            return AnimatedContainer(
                              duration: animationDuration,
                              margin: EdgeInsets.only(top: 8),
                              width: currentPage == indexSlider ? 20 : 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color:currentPage == indexSlider ? ColorsData.secondary : ColorsData.dot.withOpacity(0.8)),
                            );
                          }),
                      ),
                      Spacer(),
                      SizedBox(
                        width: double.infinity,
                        height: getProportionateScreenHeight(56),
                        child: ButtonResponsive(
                          isIcon: false,
                          text: 'GET STARTED',
                          // width: 80,
                        ),
                      ),
                      Spacer(),     
                    ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
