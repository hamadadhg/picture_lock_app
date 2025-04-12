import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/styles/style_to_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.menu,
        color: StyleToColors.whiteColor,
        size: height * 0.043,
      ),
    );
  }
}
