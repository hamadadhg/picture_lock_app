import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/classes/asset_images/asset_images.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(child: Image.asset(AssetImages.hideImagesGallery));
  }
}
