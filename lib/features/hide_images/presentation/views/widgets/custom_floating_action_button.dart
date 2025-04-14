/*
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/helpers/pick_image_from_gallery_helper.dart';
import 'package:hide_app/core/utils/styles/style_to_colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key, required this.imagePicked});
  final void Function(File image) imagePicked;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(height * 0.05),
      ),
      elevation: 0,
      onPressed:
          () => pickImagesFromGalleryHelper(
            context: context,
            imagePicked: imagePicked,
          ),
      backgroundColor: StyleToColors.purpleColor,
      child: Icon(
        Icons.camera_alt_outlined,
        color: StyleToColors.whiteColor,
        size: height * 0.05,
      ),
    );
  }
}
*/
