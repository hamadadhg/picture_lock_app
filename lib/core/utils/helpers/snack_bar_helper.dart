import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/constants/duration_variables.dart';
import 'package:hide_app/core/utils/styles/style_to_colors.dart';
import 'package:hide_app/core/utils/styles/style_to_texts.dart';

void snackBarHelper({
  required BuildContext context,
  Color? backgroundSnackBarColor,
  required String text,
}) {
  double height = MediaQuery.sizeOf(context).height;
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: backgroundSnackBarColor ?? StyleToColors.redColor,
      duration: ksevenSeconds,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(height * 0.015),
      ),
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        backgroundColor: StyleToColors.white30Color,
        //color to OK but before click on it
        label: 'OK',
        textColor: StyleToColors.whiteColor, //this color to OK text
        disabledBackgroundColor: StyleToColors.white54Color,
        //color to OK but after click on it
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
      content: Text(
        text,
        style: StyleToTexts.textStyleMedium17(context: context),
      ),
    ),
  );
}
