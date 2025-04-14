import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/styles/style_to_texts.dart';
import 'package:hide_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';

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
          CustomTextFormField(
            hintText: 'First name',
            onTap: onTapFirstName,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'User Name Field\'s Required';
              }
              return null;
            },
          ),
          SizedBox(height: size.height * 0.015),
          CustomTextFormField(
            controller: emailController,
            hintText: 'Email',
            onTap: onTapEmail,
            textInputType: TextInputType.emailAddress,
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
          SizedBox(height: size.height * 0.015),
          CustomTextFormField(
            controller: confirmPasswordController,
            hintText: 'Confirm password',
            textInputType: TextInputType.visiblePassword,
            onTap: onTapConfirmPassword,
            doYouWantToSuffixIcon: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Confirm Password Field\'s Required';
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
