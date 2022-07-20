import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:structure/resource/colors_data.dart';
import 'package:structure/resource/text_type.dart';

class TextFormFieldCustom extends StatefulWidget {
  String hintText;
  String labelText;
  bool readOnly;
  TextInputType keyboardtype;
  TextInputAction inputAction;
  bool isObscure;
  bool isCapitalized;
  bool isLabelEnabled;
  TextEditingController controller;
  Function(String)? validator;
  TextFormFieldCustom(
      {Key? key,
      required this.hintText,
      required this.labelText,
      required this.inputAction,
      required this.isLabelEnabled,
      required this.controller,
      this.readOnly = false,
      this.isObscure = false,
      this.isCapitalized = false,
      this.validator,
      required this.keyboardtype})
      : super(key: key);

  @override
  State<TextFormFieldCustom> createState() => _TextFormFieldCustomState();
}

class _TextFormFieldCustomState extends State<TextFormFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      readOnly: widget.readOnly,
      keyboardType: widget.keyboardtype,
      obscureText: widget.isObscure,
      textCapitalization: widget.isCapitalized
          ? TextCapitalization.words
          : TextCapitalization.none,
      textInputAction: widget.inputAction,
      style: TextStyle(color: ColorsData.textInput),
      validator: (value) => widget.validator!(value!),
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.isLabelEnabled ? widget.labelText : null,
        labelStyle: TextsStyle.textInput,
        errorStyle: TextsStyle.textError,
        errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorsData.errorBorderInput)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: ColorsData.borderInput)),
      ),
    );
  }
}
