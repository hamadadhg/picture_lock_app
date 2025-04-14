/*
import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/styles/style_to_texts.dart';

class TextButtonLogsComponent extends StatelessWidget {
  const TextButtonLogsComponent({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.onPressed,
  });
  final void Function()? onPressed;
  final String text;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: Size(width * 0.35, 0),
        //you don't need to height because the width from width in Size sure, but the height from fontSize Text widget
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: StyleToTexts.textStyleMedium17(context: context),
      ),
    );
  }
}
*/
