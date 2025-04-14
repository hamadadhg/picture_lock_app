/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hide_app/core/utils/classes/asset_lotties/asset_lotties.dart';
import 'package:hide_app/core/utils/constants/string_variables.dart';
import 'package:hide_app/core/utils/helpers/pop_go_router_helper.dart';
import 'package:hide_app/core/utils/helpers/push_go_router_helper.dart';
import 'package:hide_app/core/utils/helpers/snack_bar_helper.dart';
import 'package:hide_app/core/utils/styles/style_to_colors.dart';
import 'package:hide_app/features/auth/presentation/managers/cubits/auth_cubit.dart';
import 'package:hide_app/features/auth/presentation/managers/cubits/auth_state.dart';
import 'package:hide_app/core/utils/components/lotties_component.dart';
import 'package:hide_app/features/auth/presentation/views/widgets/custom_register_section.dart';
import 'package:hide_app/features/auth/presentation/views/widgets/custom_two_buttons_auth.dart';
import 'package:lottie/lottie.dart';

class CustomRegisterViewBody extends StatefulWidget {
  const CustomRegisterViewBody({super.key});

  @override
  State<CustomRegisterViewBody> createState() => _CustomRegisterViewBodyState();
}

class _CustomRegisterViewBodyState extends State<CustomRegisterViewBody> {
  String emojies = AssetLotties.sleepEmojy; //initial value sleep
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  void wakeUpMethod() {
    setState(() {
      emojies = AssetLotties.wakeUpEmojy;
    });
  }

  void coveringEyesMethod() {
    setState(() {
      emojies = AssetLotties.coveringEyesEmojy;
    });
  }

  void heartKissMethod() {
    setState(() {
      emojies = AssetLotties.heartKissEmoji;
    });
  }

  void staringMethod() {
    setState(() {
      emojies = AssetLotties.staringEmoji;
    });
  }

  goToSleepMethod() {
    //this method to return the emojy to sleep when you make the TextField inactive
    setState(() {
      emojies = AssetLotties.sleepEmojy;
    });
  }

  void registerMethod() {
    if (formKey.currentState!.validate()) {
      context.read<AuthCubit>().registerMethod(
        email: emailController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
      );
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SuccessAuthState) {
          popGoRouterHelper(context: context);
          //this popNavigator to stop the Loading(loadingAnimation) on work when the state is change(think when you go HideImagesView and you want to back and will see the loadingAnimation still work)
          pushGoRouterHelper(context: context, view: kHideImagesViewRouter);
          snackBarHelper(
            context: context,
            backgroundSnackBarColor: StyleToColors.greenColor,
            text: state.successMessage,
          );
        } else if (state is FailureAuthState) {
          popGoRouterHelper(context: context);
          //this popNavigator to stop the Loading(loadingAnimation) on work when the state is change(think when you go HideImagesView and you want to back and will see the loadingAnimation still work)
          snackBarHelper(context: context, text: state.errorMessage);
        } else {
          showDialog(
            //i use showDialog because has a builder attribute, and i want attribute to rebuild the state(because the state is change from initial to loading to...)
            context: context,
            barrierDismissible: false,
            //barrierDismissible(it's dismiss the user to close the dialog when the user click on any place(to close the dialog), so he can't)
            builder:
                (_) =>
                    LottiesComponent(animation: AssetLotties.loadingAnimation),
          );
        }
      },
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); //to close the active
          goToSleepMethod();
          //click on anything in Column(just widgets) so the active in TextField will be inactive
        },
        behavior: HitTestBehavior.opaque,
        //now you can click on empty space in Column or another place so the active in TextField will be inactive
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: height * 0.025),
              Lottie.asset(emojies, height: height * 0.18),
              CustomRegisterSection(
                onTapFirstName: heartKissMethod,
                onTapEmail: wakeUpMethod,
                onTapPassword: coveringEyesMethod,
                onTapConfirmPassword: staringMethod,
                emailController: emailController,
                passwordController: passwordController,
                confirmPasswordController: confirmPasswordController,
              ),
              Expanded(child: SizedBox(height: height * 0.2)),
              CustomTwoButtonsAuth(
                text1: 'SIGN UP',
                onAuthMethod: registerMethod,
              ),
              SizedBox(height: height * 0.07),
            ],
          ),
        ),
      ),
    );
  }
}
*/
