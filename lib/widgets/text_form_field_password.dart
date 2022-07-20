import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:structure/resource/colors_data.dart';
import 'package:structure/resource/text_type.dart';

class TextFormFieldPasswordCustom extends StatefulWidget {
  String hintText;
  String labelText;
  bool readOnly;
  TextInputType keyboardtype;
  TextInputAction inputAction;
  bool isObscure;
  bool isObscureText;
  bool isCapitalized;
  bool isLabelEnabled;
    TextEditingController controller;
  Function(String)? validator;
  TextFormFieldPasswordCustom(
      {Key? key,
      required this.hintText,
      required this.labelText,
      required this.inputAction,
      required this.isLabelEnabled,
            required this.controller,

      this.readOnly = false,
      this.isObscure = false,
      this.isCapitalized = false,
      this.isObscureText = false,
      this.validator,
      required this.keyboardtype})
      : super(key: key);

  @override
  State<TextFormFieldPasswordCustom> createState() => _TextFormFieldPasswordCustomState();
}

class _TextFormFieldPasswordCustomState extends State<TextFormFieldPasswordCustom> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: widget.readOnly,
            controller: widget.controller,
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
        suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.isObscure = !widget.isObscure;
                  });
                },
                child: Icon(!widget.isObscure
                    ? Icons.visibility
                    : Icons.visibility_off),
              ),
      ),
    );
  }
}
