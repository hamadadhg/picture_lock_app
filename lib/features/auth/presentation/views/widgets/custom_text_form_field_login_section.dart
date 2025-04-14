import 'package:flutter/material.dart';
import 'package:hide_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';

class CustomTextFormFieldLoginSection extends StatelessWidget {
  const CustomTextFormFieldLoginSection({
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
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
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
      ],
    );
  }
}
