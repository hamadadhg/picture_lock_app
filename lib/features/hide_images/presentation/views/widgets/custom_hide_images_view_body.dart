import 'package:flutter/material.dart';
import 'package:hide_app/features/hide_images/presentation/views/widgets/custom_delete_section.dart';
import 'package:hide_app/features/hide_images/presentation/views/widgets/custom_state_management_section.dart';

class HideImagesViewBody extends StatelessWidget {
  const HideImagesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [CustomStateManagementSection(), CustomDeleteSection()],
    );
  }
}
