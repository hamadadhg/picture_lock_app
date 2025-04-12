/*
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hide_app/core/utils/constants/string_variables.dart';
import 'package:hide_app/features/hide_images/presentation/managers/cubits/hide_images_state.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HideImagesCubit extends Cubit<HideImagesState> {
  HideImagesCubit() : super(InitialHideImagesState()) {
    loadImagesFromHive();
    //when the Constructor(HideImagesCubit) is create so you make the method(loadImagesFromHive) to load images(you hidden them in the past)
  }
  final List<File> listToStoreImages = [];
  //this List will contain on images from gallery(so the path is file)
  final Box getAndPutDataInBox = Hive.box(kOpenBox);
  //you call the box to get(get data you save them in the box) and put(put data in the box, to save them and to enable you when you get out from app and get in again to see the data)
  void loadImagesFromHive() {
    //in this method you get on images you saved them in Hive
    final List<dynamic> paths = getAndPutDataInBox.get(
      kKeyBox,
      defaultValue: [],
    );
    //sure List<dynamic> i don't know on what is the type i will get on it
    //look, you use .get() method so you will get on value(value this key(kKeyBox), if there is no value in this key so you will get on this value(value defaultValue attribute(it's empty list [])))
    listToStoreImages.clear();
    listToStoreImages.addAll(paths.map((path) => File(path)));
    //when you get out from app and get in again so you want to see images you hided them in the past(and this image you save them in the Hive(paths of type dynamic) and you use this attribute(listToStoreImages of type File) so you should assign paths to listToStoreImages, so you must clear all elements in listToStoreImages then add the images you saved them, because if you assign path to listToStoreImages(without use clear line) so will repeat images and list allow in repeat)
    if (listToStoreImages.isNotEmpty) {
      //if there are images(you saved them in the past) so change the state from Initial to Update..
      emit(UpdateOnHideImagesState(storedImages: listToStoreImages));
    }
  }

  void savingImagesInHive() {
    //you create this method to saving images in Hive, and you call this method in addImages method(after .add line) and call it in deleteImages method(after .removeAt line)
    final List<String> paths =
        listToStoreImages.map((file) => file.path).toList();
    //sure List<String> i know on what is the type i will put it
    //you assign all path images to paths(variable)
    getAndPutDataInBox.put(kKeyBox, paths);
    //.put(put this value(paths) in this key(kKeyBox))
  }

  void addImages(File imageFile) {
    //this method to add images on view
    listToStoreImages.add(imageFile);
    savingImagesInHive();
    emit(UpdateOnHideImagesState(storedImages: listToStoreImages));
  }

  void deleteImages(int index) {
    //this method to delete images from view
    listToStoreImages.removeAt(index);
    savingImagesInHive();
    emit(UpdateOnHideImagesState(storedImages: listToStoreImages));
    //.remove() will take element(value this element in this List(so you have List from image, so should take path(asset/..) to this image you want delete it)) from you, but .removeAt(index) will take index this element from you
  }
}
*/
