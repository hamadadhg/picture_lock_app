import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hide_app/core/utils/classes/asset_lotties/asset_lotties.dart';
import 'package:hide_app/core/utils/components/lotties_component.dart';
import 'package:hide_app/features/hide_images/presentation/managers/cubits/hide_images_cubit.dart';
import 'package:hide_app/features/hide_images/presentation/managers/cubits/hide_images_state.dart';
import 'package:hide_app/features/hide_images/presentation/views/widgets/custom_floating_action_button.dart';
import 'package:hide_app/features/hide_images/presentation/views/widgets/custom_grid_view.dart';

class HideImagesViewBody extends StatelessWidget {
  const HideImagesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.02,
            vertical: size.height * 0.012,
          ),
          child: BlocBuilder<HideImagesCubit, HideImagesState>(
            builder: (context, state) {
              if (state is InitialHideImagesState) {
                return Center(
                  child: LottiesComponent(
                    animation: AssetLotties.emptyAnimation,
                  ),
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
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: size.height * 0.02,
            right: size.width * 0.025,
          ),
          child: Positioned(
            child: CustomFloatingActionButton(
              imagePicked: (image) {
                context.read<HideImagesCubit>().addImages(image);
              },
            ),
          ),
        ),
        //i use CustomFloatingActionButton here instead of HomeView because here i can give it(storeIma..), don't forget good to put List.. in folder lists but if the elements is constant not unconstant because you need to rebuild the elements to show the changes on them
        //storeImageFromGalleryInsideList method, it's need to take the image path from CustomFloatingActionButton(and this operation it's work from(imagePicked: storeImageFromGalleryInsideList,)), this method add images to List and give them to CustomGridView to display them on ui
      ],
    );
  }
}
