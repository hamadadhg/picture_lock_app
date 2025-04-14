import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/helpers/pop_go_router_helper.dart';
import 'package:hide_app/core/utils/styles/style_to_colors.dart';
import 'package:hide_app/core/utils/styles/style_to_texts.dart';

class CustomCancelTextButton extends StatelessWidget {
  const CustomCancelTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return TextButton(
      style: TextButton.styleFrom(
        side: const BorderSide(color: StyleToColors.blackColor),
        backgroundColor: StyleToColors.whiteColor,
        fixedSize: Size(width * 0.35, 0),
        //you don't need to height because the width from width in Size sure, but the height from fontSize Text widget
      ),
      onPressed: () => popGoRouterHelper(context: context),
      child: Text(
        'CANCEL',
        style: StyleToTexts.textStyleMedium17(
          context: context,
        ).copyWith(color: StyleToColors.blackColor),
      ),
    );
  }
}
