import 'dart:io';

abstract class HideImagesState {}

class InitialHideImagesState extends HideImagesState {}

class UpdateOnHideImagesState extends HideImagesState {
  final List<File> storedImages;
  UpdateOnHideImagesState({required this.storedImages});
}
