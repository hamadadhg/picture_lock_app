/*
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hide_app/core/utils/classes/asset_lotties/asset_lotties.dart';
import 'package:hide_app/core/utils/components/lotties_component.dart';
import 'package:hide_app/features/hide_images/presentation/managers/cubits/hide_images_cubit.dart';
import 'package:hide_app/features/hide_images/presentation/managers/cubits/hide_images_state.dart';
import 'package:hide_app/features/hide_images/presentation/views/widgets/custom_grid_view.dart';

class CustomStateManagementSection extends StatelessWidget {
  const CustomStateManagementSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.02,
        vertical: size.height * 0.012,
      ),
      child: BlocBuilder<HideImagesCubit, HideImagesState>(
        builder: (context, state) {
          if (state is InitialHideImagesState) {
            return Center(
              child: LottiesComponent(animation: AssetLotties.emptyEmoji),
            );
          } else {
            List<File> imagesFromGallery =
                state is UpdateOnHideImagesState ? state.storedImages : [];
            return CustomGridView(
              imageFiles: imagesFromGallery,
              onTapDeleteImages: (index) {
                context.read<HideImagesCubit>().deleteImages(index);
              },
            );
          }
        },
      ),
    );
  }
}
*/
