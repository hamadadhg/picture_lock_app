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
import 'package:hide_app/features/auth/presentation/views/widgets/custom_login_section.dart';
import 'package:hide_app/core/utils/components/lotties_component.dart';
import 'package:hide_app/features/auth/presentation/views/widgets/custom_two_buttons_auth.dart';
import 'package:lottie/lottie.dart';

class CustomLoginViewBody extends StatefulWidget {
  const CustomLoginViewBody({super.key});

  @override
  State<CustomLoginViewBody> createState() => _CustomLoginViewBodyState();
}

class _CustomLoginViewBodyState extends State<CustomLoginViewBody> {
  String emojies = AssetLotties.sleepEmojy; //initial value sleep
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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

  void goToSleepMethod() {
    //this method to return the emojy to sleep when you make the TextField inactive
    setState(() {
      emojies = AssetLotties.sleepEmojy;
    });
  }

  void loginMethod() {
    if (formKey.currentState!.validate()) {
      context.read<AuthCubit>().loginMethod(
        email: emailController.text,
        password: passwordController.text,
      );
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
        //now you can click on empty space in Column or another so the active in TextField will be inactive
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: height * 0.025),
              Lottie.asset(emojies, height: height * 0.18),
              CustomLoginSection(
                onTapEmail: wakeUpMethod,
                onTapPassword: coveringEyesMethod,
                emailController: emailController,
                passwordController: passwordController,
              ),
              Expanded(child: SizedBox(height: height * 0.2)),
              CustomTwoButtonsAuth(text1: 'LOGIN', onAuthMethod: loginMethod),
              SizedBox(height: height * 0.07),
            ],
          ),
        ),
      ),
    );
  }
}
*/
