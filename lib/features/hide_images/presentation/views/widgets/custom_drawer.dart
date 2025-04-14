import 'package:flutter/material.dart';
import 'package:hide_app/features/hide_images/presentation/views/widgets/custom_contain_drawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(child: CustomContainDrawer());
  }
}
