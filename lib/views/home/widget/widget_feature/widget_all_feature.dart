import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:structure/resource/colors_data.dart';
import 'package:structure/resource/text_type.dart';
import 'package:structure/widgets/chip_custom.dart';

import '../../../../data_source/mock_data.dart';

class WidgetAllFeature extends StatefulWidget {
  @override
  _WidgetAllFeatureState createState() => _WidgetAllFeatureState();
}

class _WidgetAllFeatureState extends State<WidgetAllFeature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: ColorsData.appBarBackground,
        title: Text('Feature Partners', style: TextsStyle.titleAppBar),
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 10, left: 10, top: 10),
        child: GridView.builder(
          itemCount: featuresAll.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              mainAxisExtent: (MediaQuery.of(context).size.width / 2) * 1.8,
              maxCrossAxisExtent: MediaQuery.of(context).size.width / 2),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/${featuresAll[index]['images']}"),
                          fit: BoxFit.cover),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 10, left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                          "assets/images/icons/fast-delivery.png"),
                                      Container(
                                        margin: const EdgeInsets.only(left: 10),
                                        child: Text(
                                          '25min',
                                          style: TextsStyle.textDetailFeature,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                          "assets/images/icons/Dollar.png"),
                                      Container(
                                        margin: const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Free',
                                          style: TextsStyle.textDetailFeature,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 10, left: 10, right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    child: ChipCustom(text: "4.5"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Tacos Nanchas",
                        style: TextsStyle.heading,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Chinese',
                            style: TextsStyle.lyrics,
                          ),
                          Text('American', style: TextsStyle.lyrics),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
