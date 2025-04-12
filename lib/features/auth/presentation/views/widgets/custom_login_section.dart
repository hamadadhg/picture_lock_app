import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/styles/style_to_texts.dart';
import 'package:hide_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';

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
          CustomTextFormField(
            controller: emailController,
            hintText: 'Email',
            textInputType: TextInputType.emailAddress,
            onTap: onTapEmail,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email Field\'s Required';
              } else if (!value.contains('@gmail.com')) {
                return 'You\'re Forget @gmail.com';
              }
              return null;
            },
          ),
          SizedBox(height: size.height * 0.015),
          CustomTextFormField(
            controller: passwordController,
            hintText: 'Password',
            textInputType: TextInputType.visiblePassword,
            onTap: onTapPassword,
            doYouWantToSuffixIcon: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password Field\'s Required';
              } else if (value.length < 7) {
                return 'You Must Put 8 Character Or More';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
