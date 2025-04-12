/*
import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/components/text_button_logs_component.dart';
import 'package:hide_app/core/utils/constants/string_variables.dart';
import 'package:hide_app/core/utils/helpers/push_go_router_helper.dart';
import 'package:hide_app/core/utils/styles/style_to_colors.dart';

class CustomTwoButtonsHome extends StatelessWidget {
  const CustomTwoButtonsHome({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButtonLogsComponent(
          backgroundColor: StyleToColors.burgundyColor,
          onPressed: () {
            pushGoRouterHelper(context: context, view: kLoginViewRouter);
          },
          text: 'LOG IN',
        ),
        SizedBox(height: height * 0.004),
        TextButtonLogsComponent(
          backgroundColor: StyleToColors.deepBlueColor,
          onPressed: () {
            pushGoRouterHelper(context: context, view: kRegisterViewRouter);
          },
          text: 'SIGN UP',
        ),
      ],
    );
  }
}
*/
