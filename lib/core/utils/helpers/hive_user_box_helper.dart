import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<Box?> openUserBoxHelper({required String baseOnBoxName}) async {
  final userId = FirebaseAuth.instance.currentUser?.uid;
  //give UID for this account
  if (userId == null) {
    return null;
  }
  final String boxName = '${userId}_$baseOnBoxName';
  //i create special box for this user, because box name for this user different on another user, example: 1: 112(uid)tamer@.., 2: 113(uid)hasan@..,
  //because you control on if you login or register so you can Navigate to HideImagesView, but you forget to control on this images in HideImagesView should be special for this user..,
  //so when you use this account also you open this box(special name), because the box(Hive) contain on images
  return await Hive.openBox(boxName);
}
