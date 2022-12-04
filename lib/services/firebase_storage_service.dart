

import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

Reference get fireStorage => FirebaseStorage.instance.ref();

class FirebaseStorageService extends GetxService{
  Future<String?> getImage(String? imgName) async{
    if(imgName == null){
      return null;
    }
    try{
      var urlRef = fireStorage
          .child("images/homeScreen/swiper")
          .child(imgName.toLowerCase());
      var imgUrl = await urlRef.getDownloadURL();
      return imgUrl;
    } catch (e) {
      stdout.write(e);
      return null;
    }
  }
}