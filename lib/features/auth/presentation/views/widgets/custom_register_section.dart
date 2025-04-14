import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/styles/style_to_texts.dart';
import 'package:hide_app/features/auth/presentation/views/widgets/custom_text_form_field_register_section.dart';

class CustomRegisterSection extends StatelessWidget {
  const CustomRegisterSection({
    super.key,
    required this.onTapEmail,
    required this.onTapPassword,
    required this.onTapFirstName,
    required this.onTapConfirmPassword,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
  });
  final VoidCallback onTapEmail,
      onTapPassword,
      onTapFirstName,
      onTapConfirmPassword;
  final TextEditingController emailController,
      passwordController,
      confirmPasswordController;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign Up',
            style: StyleToTexts.textStyleBold25(context: context),
          ),
          SizedBox(height: size.height * 0.025),
          CustomTextFormFieldRegisterSection(
            onTapEmail: onTapEmail,
            onTapPassword: onTapPassword,
            onTapFirstName: onTapFirstName,
            onTapConfirmPassword: onTapConfirmPassword,
            emailController: emailController,
            passwordController: passwordController,
            confirmPasswordController: confirmPasswordController,
          ),
        ],
      ),
    );
  }
}
