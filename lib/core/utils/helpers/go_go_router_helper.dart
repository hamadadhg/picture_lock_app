import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hide_app/core/utils/constants/string_variables.dart';

void goGoRouterHelper({required BuildContext context}) {
  GoRouter.of(context).go(kHomeViewRouter);
}
