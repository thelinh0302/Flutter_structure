import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../../resource/constant.dart';

class DetailRestaurant extends StatefulWidget {
  const DetailRestaurant({Key? key}) : super(key: key);

  @override
  State<DetailRestaurant> createState() => _DetailRestaurantState();
}

class _DetailRestaurantState extends State<DetailRestaurant> {
  @override
  ScrollController _scrollController = new ScrollController();
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
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
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
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Expanded(
                child: Text('section1'),
              ),
              Container(
                child: Text('section1'),
              ),
              Container(
                child: Text('section1'),
              ),
              Container(
                child: Text('section1'),
              ),
              Container(
                child: Text('section1'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Widget _customScrollView() {
//   return CustomScrollView(slivers: <Widget>[
//     SliverAppBar(
//       iconTheme: IconThemeData(color: Colors.white),
//       expandedHeight: 250.0,
//       floating: false,
//       pinned: true,
//       flexibleSpace: FlexibleSpaceBar(
//         centerTitle: true,
//         background: Swiper(
//           itemCount: 3,
//           itemBuilder: (BuildContext context, int index) => Image.asset(
//             "assets/images/featured2.png",
//             fit: BoxFit.cover,
//           ),
//           autoplay: true,
//         ),
//       ),
//       actions: <Widget>[
//         IconButton(
//           icon: const Icon(Icons.search),
//           iconSize: 28,
//           tooltip: 'Add new entry',
//           onPressed: () {},
//         ),
//       ],
//     ),
//     SliverList(
//       delegate: SliverChildBuilderDelegate(
//           (context, index) => Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   height: 75,
//                   color: Colors.black12,
//                 ),
//               ),
//           childCount: 10),
//     )
//   ]);
// }
