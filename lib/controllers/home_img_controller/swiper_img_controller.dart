import 'dart:io';

import 'package:get/get.dart';
import 'package:satsangapp/services/firebase_storage_service.dart';

class SwiperImgController extends GetxController{
  final allImages = <String>[].obs;

  @override
  void onReady(){
    getAllImages();
    super.onReady();
  }

  Future<void> getAllImages() async{
    List<String> imgName = ["1", "2", "3"];
    try{
      for (var img in imgName){
        final imgUrl = await Get.find<FirebaseStorageService>().getImage(img);
        allImages.add(imgUrl!);
      }
    } catch (e) {
      stdout.write(e);
    }
  }
}