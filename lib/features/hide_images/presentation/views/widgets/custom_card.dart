import 'dart:io';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.imageFile,
    required this.onLongPress,
    required this.onTap,
  });
  final File imageFile; //i have many images from gallery
  final VoidCallback onLongPress, onTap;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return GestureDetector(
      onTap: onTap, //to make oneClick is work(to delete image)
      onLongPress: onLongPress, //to make longClick is work(to display image)
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height * 0.015),
          image: DecorationImage(image: FileImage(imageFile), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
