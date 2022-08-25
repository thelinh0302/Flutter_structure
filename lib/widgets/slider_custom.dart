import 'package:flutter/material.dart';

import '../resource/text_type.dart';
import 'chip_custom.dart';

class SliderCustom extends StatefulWidget {
  double heightBox;
  double widthCard;
  double heightImage;
  dynamic data;
  SliderCustom(
      {Key? key,
      required this.heightBox,
      required this.heightImage,
      required this.data,
      required this.widthCard})
      : super(key: key);

  @override
  State<SliderCustom> createState() => _SliderCustomState();
}

class _SliderCustomState extends State<SliderCustom> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.heightBox,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.data.length,
        itemBuilder: (_, index) {
          return Container(
            width: widget.widthCard,
            height: double.infinity,
            margin: EdgeInsets.only(right: 10, left: 0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: widget.heightImage,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/${widget.data[index]['images']}"),
                          fit: BoxFit.cover),
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(widget.data[index]['title'],
                      textAlign: TextAlign.left, style: TextsStyle.heading),
                ),
                const SizedBox(
                  height: 3,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(widget.data[index]['descrip'],
                      textAlign: TextAlign.left, style: TextsStyle.lyrics),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ChipCustom(
                      text: widget.data[index]['star'],
                    ),
                    Text(
                      widget.data[index]['minutes'],
                      style: TextsStyle.textDetail,
                    ),
                    Text(
                      widget.data[index]['type'],
                      style: TextsStyle.textDetail,
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
