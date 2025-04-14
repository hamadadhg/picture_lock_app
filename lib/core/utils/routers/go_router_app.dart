/*
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hide_app/core/utils/constants/string_variables.dart';
import 'package:hide_app/features/auth/presentation/managers/cubits/auth_cubit.dart';
import 'package:hide_app/features/auth/presentation/views/login_view.dart';
import 'package:hide_app/features/auth/presentation/views/register_view.dart';
import 'package:hide_app/features/hide_images/presentation/managers/cubits/hide_images_cubit.dart';
import 'package:hide_app/features/hide_images/presentation/views/hide_images_view.dart';
import 'package:hide_app/features/home/presentation/views/home_view.dart';

class GoRouterApp {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kHomeViewRouter,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kLoginViewRouter,
        builder:
            (context, state) => BlocProvider(
              create: (context) => AuthCubit(),
              child: const LoginView(),
            ),
      ),
      GoRoute(
        path: kRegisterViewRouter,
        builder:
            (context, state) => BlocProvider(
              create: (context) => AuthCubit(),
              child: const RegisterView(),
            ),
      ),
      GoRoute(
        path: kHideImagesViewRouter,
        builder:
            (context, state) => BlocProvider(
              create: (context) => HideImagesCubit(),
              child: const CustomHideImagesView(),
            ),
      ),
    ],
  );
}
*/
