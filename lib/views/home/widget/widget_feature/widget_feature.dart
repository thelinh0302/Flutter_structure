import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:structure/views/home/widget/widget_feature/widget_all_feature.dart';

import '../../../../resource/text_type.dart';
import '../../../../widgets/slider_custom.dart';

class WidgetFeature extends StatefulWidget {
  List<dynamic> list;
  WidgetFeature({Key? key, required this.list}) : super(key: key);

  @override
  _WidgetFeatureState createState() => _WidgetFeatureState();
}

class _WidgetFeatureState extends State<WidgetFeature> {
  void _push() {
    Navigator.of(context).push(MaterialPageRoute(
      // we'll look at ColorDetailPage later
      builder: (context) => Container(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text(
              'Detail page',
            ),
          ),
          body: const Text('page detial'),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Featured Partners',
              style: TextsStyle.titleSection,
            ),
            GestureDetector(
              onTap: () => {_push()},
              child: Text(
                'See all',
                style: TextsStyle.subTitleLink,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
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
