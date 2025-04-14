import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<void> pickImagesFromGalleryHelper({
  required BuildContext context,
  required void Function(File image) imagePicked,
}) async {
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
