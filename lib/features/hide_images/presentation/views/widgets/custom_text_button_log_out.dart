// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/helpers/go_go_router_helper.dart';
import 'package:hide_app/core/utils/helpers/snack_bar_helper.dart';
import 'package:hide_app/core/utils/styles/style_to_colors.dart';
import 'package:hide_app/core/utils/styles/style_to_texts.dart';

class CustomTextButtonLogOut extends StatelessWidget {
  const CustomTextButtonLogOut({
    super.key,
    required this.logoutType,
    required this.completeFailureTextSnackBar,
    required this.typeTextOperation,
  });
  final String completeFailureTextSnackBar, typeTextOperation;
  final Future<void> Function() logoutType;
  //this(final Future<void> Function() it's mean you called function after click),
  //this(final Future<void> it's mean you called function when the ui is building in this view)
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        try {
          await logoutType();
          goGoRouterHelper(context: context);
        } on Exception catch (e) {
          snackBarHelper(
            context: context,
            text:
                'There was an error in $completeFailureTextSnackBar: ${e.toString()}',
          );
        }
      },
      child: Text(
        typeTextOperation,
        style: StyleToTexts.textStyleNormal16(
          context: context,
        ).copyWith(color: StyleToColors.redColor),
      ),
    );
  }
}
