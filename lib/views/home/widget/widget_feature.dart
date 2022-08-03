import 'package:flutter/cupertino.dart';

import '../../../resource/text_type.dart';
import '../../../widgets/slider_custom.dart';

class WidgetFeature extends StatefulWidget {
  List<dynamic> list;
  WidgetFeature({Key? key, required this.list}) : super(key: key);

  @override
  _WidgetFeatureState createState() => _WidgetFeatureState();
}

class _WidgetFeatureState extends State<WidgetFeature> {
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
            Text(
              'See all',
              style: TextsStyle.subTitleLink,
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
