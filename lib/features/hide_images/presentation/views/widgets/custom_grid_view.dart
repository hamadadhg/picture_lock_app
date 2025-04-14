import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/helpers/show_image_dialog_helper.dart';
import 'package:hide_app/features/hide_images/presentation/views/widgets/custom_card.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.imageFiles,
    required this.onTapDeleteImages,
  });
  final List<File> imageFiles;
  final void Function(int index) onTapDeleteImages;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: size.height * 0.011,
        crossAxisSpacing: size.width * 0.019,
      ),
      itemCount: imageFiles.length,
      itemBuilder: (context, index) {
        File imageFile = imageFiles[index];
        return CustomCard(
          imageFile: imageFile,
          onTap: () => onTapDeleteImages(index),
          onLongPress:
              () =>
                  showImageDialogHelper(context: context, imageFile: imageFile),
        );
      },
    );
  }
}
