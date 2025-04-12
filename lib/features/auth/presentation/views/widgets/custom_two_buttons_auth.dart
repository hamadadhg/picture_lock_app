/*
import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/components/text_button_logs_component.dart';
import 'package:hide_app/core/utils/styles/style_to_colors.dart';
import 'package:hide_app/features/auth/presentation/views/widgets/custom_cancel_text_button.dart';

class CustomTwoButtonsAuth extends StatelessWidget {
  const CustomTwoButtonsAuth({
    super.key,
    required this.text1,
    required this.onAuthMethod,
  });
  final String text1;
  final VoidCallback onAuthMethod;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        TextButtonLogsComponent(
          backgroundColor: StyleToColors.burgundyColor,
          onPressed: onAuthMethod,
          text: text1,
        ),
        SizedBox(height: height * 0.004),
        const CustomCancelTextButton(),
      ],
    );
  }
}
*/
