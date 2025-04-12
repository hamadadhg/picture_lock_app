import 'package:flutter/material.dart';
import 'package:hide_app/core/utils/styles/style_to_colors.dart';
import 'package:hide_app/core/utils/styles/style_to_texts.dart';
import 'package:hide_app/features/hide_images/presentation/views/widgets/custom_drawer.dart';
import 'package:hide_app/features/hide_images/presentation/views/widgets/custom_hide_images_view_body.dart';
import 'package:hide_app/features/hide_images/presentation/views/widgets/custom_icon_button.dart';

class CustomHideImagesView extends StatefulWidget {
  const CustomHideImagesView({super.key});

  @override
  State<CustomHideImagesView> createState() => _CustomHideImagesViewState();
}

class _CustomHideImagesViewState extends State<CustomHideImagesView> {
  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: StyleToColors.purpleColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: CustomIconButton(
          onPressed: () {
            scaffoldState.currentState!.openDrawer();
          },
        ),
        title: Text(
          'Hide Images',
          style: StyleToTexts.textStylemostThick24(context: context),
        ),
      ),
      body: const HideImagesViewBody(),
    );
  }
}
