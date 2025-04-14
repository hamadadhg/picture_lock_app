import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/helpers/underline_input_border_helper.dart';
import 'package:hide_app/core/utils/styles/style_to_texts.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.validator,
    required this.onTap,
    this.textInputType,
    this.controller,
    this.doYouWantToSuffixIcon = false,
  });
  final String hintText;
  final VoidCallback onTap;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool doYouWantToSuffixIcon;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isVisibility = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return TextFormField(
      obscureText: widget.doYouWantToSuffixIcon ? isVisibility : false,
      //here(obscureText to make the text is hide or no), first you check if this field has a suffixIcon(doYouWantToSuffixIcon), second if true so give it value isVisibility to work hide text with work icon, third if false so this field doesn't has a suffixIcon so give it false(doesn't hide the text)
      controller: widget.controller,
      keyboardType: widget.textInputType ?? TextInputType.name,
      validator: widget.validator,
      onTap: widget.onTap, //there is onTap in TextField
      style: StyleToTexts.textStyleNormal16(context: context),
      decoration: InputDecoration(
        suffixIcon:
            widget.doYouWantToSuffixIcon
                ? IconButton(
                  onPressed: () {
                    setState(() {
                      isVisibility = !isVisibility;
                    });
                  },
                  icon: Icon(
                    isVisibility ? Icons.visibility_off : Icons.visibility,
                    //here i control on shape the icon
                    size: height * 0.035,
                  ),
                )
                : null,
        hintText: widget.hintText,
        enabledBorder: outlineInputBorderHelper(),
        focusedBorder: outlineInputBorderHelper(),
        hintStyle: StyleToTexts.textStyleNormal15(context: context),
      ),
    );
  }
}
