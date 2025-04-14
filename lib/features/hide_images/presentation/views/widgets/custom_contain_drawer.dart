import 'package:flutter/material.dart';
import 'package:hide_app/features/hide_images/presentation/views/widgets/custom_drawer_header.dart';
import 'package:hide_app/features/hide_images/presentation/views/widgets/custom_log_out_drawer.dart';

class CustomContainDrawer extends StatelessWidget {
  const CustomContainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        CustomDrawerHeader(),
        Expanded(child: SizedBox()),
        CustomLogOutDrawer(),
        SizedBox(height: height * 0.06),
      ],
    );
  }
}
