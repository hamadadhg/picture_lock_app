/*
import 'package:flutter/material.dart';
import 'package:hide_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';

class CustomTextFormFieldRegisterSection extends StatelessWidget {
  const CustomTextFormFieldRegisterSection({
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
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
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
        SizedBox(height: height * 0.015),
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
        SizedBox(height: height * 0.015),
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
        SizedBox(height: height * 0.015),
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
    );
  }
}
*/
