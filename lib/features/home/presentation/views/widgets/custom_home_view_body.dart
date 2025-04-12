import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/classes/asset_images/asset_images.dart';
import 'package:hide_app/features/home/presentation/views/widgets/custom_two_buttons_home.dart';

class CustomHomeViewBody extends StatelessWidget {
  const CustomHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned.fill(
          //Positioned.fill and fit attribute to make the image fill all the view
          child: Image.asset(AssetImages.spaceImage, fit: BoxFit.fill),
        ),
        Positioned(bottom: height * 0.07, child: const CustomTwoButtonsHome()),
      ],
    );
  }
}
