import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satsangapp/login_page.dart';
import 'package:satsangapp/screens/btm_bar.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  //email, password, name...
  late Rx<User?> _user;
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //our user would be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user){
    if(user==null){

      stdout.write("login page");
      Get.offAll(()=>const LoginPage());
    }else{
      Get.offAll(()=>const BottomBarScreen());
    }
  }

  // void register(String email, password) async{
  //   try {
  //     await auth.createUserWithEmailAndPassword(email: email, password: password);
  //   } catch (e) {
  void register(String email, password)async{
    try{
      await  auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About User", "User message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text(
            "Account creation failed",
            style: TextStyle(
                color: Colors.white
            ),
          ),
          messageText: Text(
              e.toString(),
              style: const TextStyle(
                  color: Colors.white
              )
          )
      );
    }
  }

  void login(String email, password)async{
    try{
      await  auth.signInWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About Login", "Login message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text(
            "Login failed",
            style: TextStyle(
                color: Colors.white
            ),
          ),
          messageText: Text(
              e.toString(),
              style: const TextStyle(
                  color: Colors.white
              )
          )
      );
    }
  }

  void logOut()async{
    await auth.signOut();
  }
}