import 'package:flutter/material.dart';

import '../../../resource/text_type.dart';

class WidgetType extends StatefulWidget {
  List<dynamic> list;

  WidgetType({Key? key, required this.list}) : super(key: key);

  @override
  _WidgetTypeState createState() => _WidgetTypeState();
}

class _WidgetTypeState extends State<WidgetType> {
  @override
  Widget build(BuildContext context) {
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
            itemCount: widget.list.length,
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
                              image: AssetImage(
                                  "assets/images/${widget.list[index]['images']}"),
                              fit: BoxFit.cover),
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                          "${widget.list[index]['title']} (${widget.list[index]['total']})",
                          textAlign: TextAlign.left,
                          style: TextsStyle.caption),
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
}
