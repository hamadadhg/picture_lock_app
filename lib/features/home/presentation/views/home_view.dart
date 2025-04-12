import 'package:flutter/material.dart';
import 'package:hide_app/features/home/presentation/views/widgets/custom_home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CustomHomeViewBody());
  }
}
