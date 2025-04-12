/*
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/styles/style_to_colors.dart';
import 'package:hide_app/features/hide_images/presentation/views/widgets/custom_text_button_log_out.dart';

class CustomLogOutAndDelete extends StatelessWidget {
  const CustomLogOutAndDelete({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Row(
      children: [
        Icon(Icons.delete, color: StyleToColors.redColor, size: height * 0.04),
        CustomTextButtonLogOut(
          logoutType: () async {
            final user = FirebaseAuth.instance.currentUser;
            //in delete you should check before delete
            if (user != null) {
              await user.delete();
            }
          },
          completeFailureTextSnackBar: 'Log Out & Delete',
          typeTextOperation: 'Log Out & Delete',
        ),
      ],
    );
  }
}
*/
