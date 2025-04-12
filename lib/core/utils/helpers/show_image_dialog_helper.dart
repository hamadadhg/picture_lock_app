/*
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/helpers/pop_go_router_helper.dart';
import 'package:hide_app/core/utils/styles/style_to_colors.dart';

void showImageDialogHelper({
  required BuildContext context,
  required File imageFile,
}) {
  Size size = MediaQuery.sizeOf(context);
  showDialog(
    context: context,
    barrierColor: StyleToColors.blackColor.withAlpha(180),
    //barrierColor this color appear in the back Dialog
    builder: (_) {
      return GestureDetector(
        //i want GestureDetector because i want after display image in the center(when i click longPress like instagram), i want to click on any place in Dialog or view to stop on unDisplay image(this operation also like instagram)
        onTap: () => popGoRouterHelper(context: context),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.017,
            vertical: size.height * 0.012,
          ),
          child: Center(
            //Center widget to make dialog in the center view
            child: Hero(
              //my code is without Hero widget but Hero widget make the display image operation(onLongPress after that display image in the center) is smoothly
              tag: imageFile,
              //tag: take Object(or primitive DataType) you want to happen smoothly thing on it, but you must use same parameter in tag and child the widget(i mean imageUrl in Image widget)
              child: ClipRRect(
                borderRadius: BorderRadius.circular(size.height * 0.015),
                child: Image.file(imageFile, fit: BoxFit.contain),
              ),
            ),
          ),
        ),
      );
    },
  );
}
*/
