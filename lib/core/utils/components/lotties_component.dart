import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottiesComponent extends StatelessWidget {
  const LottiesComponent({super.key, required this.animation});
  final String animation;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Lottie.asset(animation, height: height * 0.6);
  }
}
