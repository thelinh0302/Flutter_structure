import 'package:flutter/material.dart';
import 'package:structure/resource/colors_data.dart';
import 'package:structure/resource/font_name.dart';
import 'package:structure/resource/font_size.dart';

class TextsStyle {
  static TextStyle titleAppBar = TextStyle(
    color: ColorsData.appBarText,
    fontFamily: Fonts.medium,
    fontSize: FontsSize.appBar,
  );
  static TextStyle titleLogin = TextStyle(
    color: ColorsData.textTitleLogin,
    fontFamily: Fonts.semibold,
    fontWeight: FontWeight.bold,
    fontSize: 17,
  );
  static TextStyle titleLoginSocial = TextStyle(
    color: ColorsData.textTitleLogin,
    fontFamily: Fonts.semibold,
    fontSize: 14,
  );
  static TextStyle title = TextStyle(
      color: ColorsData.textTitle,
      fontFamily: Fonts.semibold,
      fontSize: FontsSize.title,
      fontWeight: FontWeight.bold);
  static TextStyle titleSection = TextStyle(
      color: ColorsData.textTitle,
      fontFamily: Fonts.semibold,
      fontSize: FontsSize.titleSection,
      fontWeight: FontWeight.bold);
  static TextStyle subTitle = TextStyle(
    color: ColorsData.textSubTitle,
    fontFamily: Fonts.medium,
    fontSize: FontsSize.subTitle,
  );
  static TextStyle subTitleLink = TextStyle(
    color: ColorsData.textLink,
    fontFamily: Fonts.medium,
    fontSize: FontsSize.subTitle,
  );
  static TextStyle heading = TextStyle(
    color: ColorsData.textHeading,
    fontFamily: Fonts.medium,
    fontSize: FontsSize.heading,
  );
  static TextStyle fadedText = TextStyle(
    color: ColorsData.textFaded,
    fontFamily: Fonts.medium,
    fontSize: FontsSize.heading,
  );
  static TextStyle caption = TextStyle(
    color: ColorsData.textCaption,
    fontFamily: Fonts.light,
    fontSize: FontsSize.caption,
    fontStyle: FontStyle.italic,
  );
  static TextStyle lyrics = TextStyle(
    color: ColorsData.textLyrics,
    fontFamily: Fonts.regular,
    fontSize: FontsSize.lyrics,
  );
  static TextStyle subject = TextStyle(
    color: ColorsData.textSubject,
    fontFamily: Fonts.medium,
    fontSize: FontsSize.subject,
  );
  static TextStyle content = TextStyle(
    color: ColorsData.textConten,
    fontFamily: Fonts.regular,
    fontSize: FontsSize.conten,
  );
  static TextStyle textError = TextStyle(
    color: ColorsData.errorText,
    fontFamily: Fonts.regular,
    fontSize: FontsSize.conten,
  );
  static TextStyle textInput = TextStyle(
    color: ColorsData.textInput,
    fontFamily: Fonts.regular,
    fontSize: FontsSize.conten,
  );
}
