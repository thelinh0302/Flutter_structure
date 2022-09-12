import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:structure/resource/button_responsive.dart';
import 'package:structure/resource/colors_data.dart';
import 'package:structure/resource/text_type.dart';

import '../../data_source/mock_data.dart';
import '../../resource/button_customer.dart';
import '../../resource/constant.dart';
import '../../widgets/slider_custom.dart';

class DetailRestaurant extends StatefulWidget {
  const DetailRestaurant({Key? key}) : super(key: key);

  @override
  State<DetailRestaurant> createState() => _DetailRestaurantState();
}

class _DetailRestaurantState extends State<DetailRestaurant>
    with TickerProviderStateMixin {
  @override
  ScrollController _scrollController = new ScrollController();
  late TabController _tabController;
  StreamController<List<Map<String, dynamic>>> streamController =
      StreamController();
  bool lastStatus = true;
  _scrollListener() {
    if (isShrink != lastStatus) {
      setState(() {
        lastStatus = isShrink;
      });
    }
  }

  bool get isShrink {
    return _scrollController.hasClients &&
        _scrollController.offset > (200 - kToolbarHeight);
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    print('tab');
    streamController.sink.add(food);
    super.didChangeDependencies();
  }

  Widget build(BuildContext context) {
    return NestedScrollView(
      controller: _scrollController,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            iconTheme: isShrink
                ? const IconThemeData(color: Colors.black)
                : const IconThemeData(color: Colors.white),
            expandedHeight: 250.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Swiper(
                itemCount: 5,
                pagination: SwiperCustomPagination(
                  builder: (BuildContext context, SwiperPluginConfig config) =>
                      (Padding(
                    padding: const EdgeInsets.only(right: 20, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            5,
                            (index) {
                              return AnimatedContainer(
                                duration: animationDuration,
                                margin:
                                    const EdgeInsets.only(top: 150, right: 10),
                                width: 13,
                                height: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: config.activeIndex == index
                                      ? Colors.white
                                      : Colors.grey.withOpacity(0.5),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
                itemBuilder: (BuildContext context, int) => (Image.asset(
                  "assets/images/featured2.png",
                  fit: BoxFit.cover,
                )),
                autoplay: true,
              ),
            ),
            actions: <Widget>[
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.share),
                    iconSize: 28,
                    tooltip: 'Add new entry',
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    iconSize: 28,
                    tooltip: 'Add new entry',
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          )
        ];
      },
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mayfield Bakery & Cafe',
                    style: TextsStyle.title,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '.Chinese .American .Deshi food',
                    style: TextsStyle.fadedText,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text('4.3', style: TextsStyle.subTitle),
                      Image.asset("assets/images/icons/rating.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('200+', style: TextsStyle.subTitle),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Ratings', style: TextsStyle.subTitle),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Image.asset("assets/images/Active.png"),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 5, left: 3),
                                      child: Image.asset(
                                          "assets/images/icons/delivery.png")),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 10),
                                    child:
                                        Text('Free', style: TextsStyle.heading),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text('Delivery',
                                        style: TextsStyle.fadedText),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Image.asset("assets/images/Active.png"),
                                        Container(
                                            margin: const EdgeInsets.only(
                                                top: 5, left: 3),
                                            child: Image.asset(
                                                "assets/images/icons/clock.png")),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20, left: 10),
                                          child: Text('25',
                                              style: TextsStyle.heading),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text('Minutes',
                                              style: TextsStyle.fadedText),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          ButtonCustomer(
                            text: 'TAKE WAKE',
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Featured Items',
                      style: TextsStyle.titleSection,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(height: 15),
                  SliderCustom(
                    heightBox: 200,
                    widthCard: 150,
                    heightImage: 150,
                    data: featureItems,
                  ),
                  TabBar(
                    onTap: (value) {
                      print(value);
                      if (value == 0) {
                        streamController.sink.add(food);
                      } else {
                        streamController.sink.add([]);
                      }
                    },
                    controller: _tabController,
                    labelStyle: TextsStyle.titleTapbar,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: CircleTabIndicator(
                        color: ColorsData.secondary, radius: 4),
                    tabs: [
                      const Tab(text: "Sea Food"),
                      const Tab(text: "Appetizers"),
                      const Tab(text: "Dim Sums")
                    ],
                  ),
                  StreamBuilder<List<Map<String, dynamic>>>(
                    initialData: [],
                    stream: streamController.stream,
                    builder: (context, asyncSnapshot) => ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: asyncSnapshot.data?.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 140,
                              height: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/itemFood2.png"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text('Title'),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleTabIndicator extends BoxDecoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius / 1);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
