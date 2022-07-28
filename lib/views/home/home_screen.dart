import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:structure/resource/text_type.dart';

import '../../resource/colors_data.dart';
import '../../resource/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List images = ["food1.png", "food2.png", "food3.png"];
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
              //section introduce
              sectionIntroduce(),
              const SizedBox(
                height: 20,
              ),
              sectionFeatured(),
              Container(
                height: 200,
                child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage('assets/images/food1.png'))),
                      );
                    }),
              ),
              // Expanded();
            ],
          ),
        ),
      ),
    );
  }

  Column sectionFeatured() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Featured Partners',
              style: TextsStyle.titleSection,
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
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (_, index) {
              return Container(
                width: 200,
                height: double.infinity,
                margin: EdgeInsets.only(right: 10, left: 0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("assets/images/featured1.png"),
                              fit: BoxFit.cover),
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Daylight Coffee',
                          textAlign: TextAlign.left, style: TextsStyle.heading),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Colarodo, San Francisco',
                          textAlign: TextAlign.left, style: TextsStyle.lyrics),
                    ),
                    Text('asdasdas')
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  SizedBox sectionIntroduce() {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        onPageChanged: ((value) => setState(
              () {
                currentSlideIntro = value;
              },
            )),
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/${images[index]}',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: List.generate(
                      images.length,
                      (index) {
                        return AnimatedContainer(
                          duration: animationDuration,
                          margin: EdgeInsets.only(top: 150, right: 10),
                          width: 13,
                          height: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: currentSlideIntro == index
                                ? Colors.white
                                : Colors.grey.withOpacity(0.5),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
