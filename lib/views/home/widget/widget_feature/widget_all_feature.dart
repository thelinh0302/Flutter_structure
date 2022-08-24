import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:structure/resource/colors_data.dart';
import 'package:structure/resource/text_type.dart';

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
      body: GridView.count(
        crossAxisCount: 4,
        children: List.generate(
            features.length,
            (index) => Container(
                  margin: const EdgeInsets.only(right: 10, left: 10),
                  height: double.maxFinite,
                  child: (Column(
                    children: [
                      Container(
                        height: 100,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/${featuresAll[index]['images']}"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("rdsfsdfds",
                            textAlign: TextAlign.left,
                            style: TextsStyle.heading),
                      ),
                    ],
                  )),
                )),
      ),
    );
  }
}
