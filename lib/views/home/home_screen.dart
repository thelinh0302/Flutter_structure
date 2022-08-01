import 'package:flutter/material.dart';
import 'package:structure/resource/text_type.dart';
import '../../resource/constant.dart';
import '../../widgets/chip_custom.dart';
import '../../widgets/slider_custom.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List images = ["food1.png", "food2.png", "food3.png"];
  List<Map<String, dynamic>> features = [
    {
      "title": "Daylight Coffe",
      "descrip": "Colarodo, San Francisco",
      "start": 4.5,
      "minutes": "25min",
      "type": "Free delivery",
      "images": "featured1.png"
    }
  ];
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
              const SizedBox(
                height: 20,
              ),
              //section ads
              bannerAds(),
              const SizedBox(
                height: 20,
              ),
              sectionRestaurant(),
              // sections type
              const SizedBox(
                height: 20,
              ),
              sectionType(),
              // Expanded();
            ],
          ),
        ),
      ),
    );
  }

  Container bannerAds() {
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
        // SliderCustom(
        //   heightBox: 280,
        //   widthCard: 200,
        //   heightImage: 200,
        //   data: features,
        // ),
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
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChipCustom(
                          text: '4.5',
                        ),
                        Text(
                          '25min',
                          style: TextsStyle.textDetail,
                        ),
                        Text(
                          'Free delivery',
                          style: TextsStyle.textDetail,
                        ),
                      ],
                    )
                    // Text('asdasdas')
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Column sectionRestaurant() {
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
                              image:
                                  AssetImage("assets/images/restaurant1.png"),
                              fit: BoxFit.cover),
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('MCDonald`s',
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
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChipCustom(
                          text: '4.5',
                        ),
                        Text(
                          '25min',
                          style: TextsStyle.textDetail,
                        ),
                        Text(
                          'Free delivery',
                          style: TextsStyle.textDetail,
                        ),
                      ],
                    )
                    // Text('asdasdas')
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Column sectionType() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type of Food',
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
          height: 134,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (_, index) {
              return Container(
                width: 100,
                height: double.infinity,
                margin: EdgeInsets.only(right: 10, left: 0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 94,
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
                      alignment: Alignment.center,
                      child: Text('Burger(120)',
                          textAlign: TextAlign.left, style: TextsStyle.caption),
                    ),
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
