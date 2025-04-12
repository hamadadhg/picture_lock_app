import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/styles/style_to_colors.dart';

UnderlineInputBorder outlineInputBorderHelper() {
  //to control on just under line in TextField
  return UnderlineInputBorder(
    borderSide: BorderSide(color: StyleToColors.greyColor.withAlpha(125)),
  );
}
