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
        body: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: (MediaQuery.of(context).size.width / 2) * 1.6,
                maxCrossAxisExtent: MediaQuery.of(context).size.width / 2),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.black,
              );
            }));
  }
}
