/*
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/styles/style_to_colors.dart';
import 'package:image_picker/image_picker.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key, required this.imagePicked});
  final void Function(File image) imagePicked;
  Future<void> pickImagesFromGallery({required BuildContext context}) async {
    final ImagePicker imagePicker = ImagePicker();
    //imagePicker object to determined from where i will pick the image
    final XFile? imageFromGallery = await imagePicker.pickImage(
      source: ImageSource.gallery,
    );
    //imageFromGallery object contain on the image
    if (imageFromGallery != null) {
      imagePicked(File(imageFromGallery.path));
      //store the images in this List(in CustomHomeViewBody), now you can take the images from List and give them to CustomGridView and CustomCard
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(height * 0.05),
      ),
      elevation: 0,
      onPressed: () => pickImagesFromGallery(context: context),
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
