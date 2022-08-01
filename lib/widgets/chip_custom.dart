import 'package:flutter/material.dart';
import 'package:structure/resource/colors_data.dart';
import 'package:structure/resource/dimen.dart';
import 'package:structure/resource/text_type.dart';

class ChipCustom extends StatefulWidget {
  String text;
  ChipCustom({Key? key, required this.text}) : super(key: key);

  @override
  State<ChipCustom> createState() => _ChipCustomState();
}

class _ChipCustomState extends State<ChipCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 38,
      decoration: BoxDecoration(
          color: ColorsData.secondary,
          borderRadius: BorderRadius.circular(Dimen.chipRadius)),
      child: Center(
          child: Text(
        widget.text,
        style: TextsStyle.textChip,
      )),
    );
  }
}
