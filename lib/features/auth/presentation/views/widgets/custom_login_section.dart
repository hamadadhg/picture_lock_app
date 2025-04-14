import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/styles/style_to_texts.dart';
import 'package:hide_app/features/auth/presentation/views/widgets/custom_text_form_field_login_section.dart';

class CustomLoginSection extends StatelessWidget {
  const CustomLoginSection({
    super.key,
    required this.onTapEmail,
    required this.onTapPassword,
    required this.emailController,
    required this.passwordController,
  });
  final VoidCallback onTapEmail, onTapPassword;
  final TextEditingController emailController, passwordController;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Login', style: StyleToTexts.textStyleBold25(context: context)),
          SizedBox(height: size.height * 0.025),
          CustomTextFormFieldLoginSection(
            onTapEmail: onTapEmail,
            onTapPassword: onTapPassword,
            emailController: emailController,
            passwordController: passwordController,
          ),
        ],
      ),
    );
  }
}
