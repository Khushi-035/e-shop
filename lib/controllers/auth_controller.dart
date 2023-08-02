import 'dart:async';
import 'package:e_shop/pages/home_screen.dart';
import 'package:e_shop/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  bool isLogging = false;
  User? get user => _user.value;
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {

    super.onReady();
    _user =  Rx<User?> (auth.currentUser);
    _user.bindStream(auth.authStateChanges());
    ever(_user, loginRedirect);
  }

  loginRedirect(User? user){
    Timer(Duration(seconds:2), () { 
      if(user == null) {
        isLogging = false;
        update();
        Get.offAll(()=> const LoginScreen());
      } else {
        isLogging = true;
        update();
        Get.offAll(()=> const HomeScreen());
      }
    });
  
  }

  void registerUser(email, password) async {
  try {
    isLogging =true;
    update();
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  } on FirebaseAuthException catch (e) {
    //define error
    getErrorSnackbar("Account Creating Failed", e);

  }
}

  void login(email, password) async {
  try {
    isLogging = true;
    update();
    await auth.signInWithEmailAndPassword(email: email, password: password);
    getSuccessSnackBar("Successfully logged in as ${_user.value!.email}");
  } on FirebaseAuthException catch (e) {
    
    getErrorSnackbar("Login Failed", e);

    

  }
}

  

  getErrorSnackbar(String message, _) {
    Get.snackbar(
      "Error", 
      "$message\n${_.message}",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.blueAccent,
      colorText: Colors.white,
      borderRadius: 10,
      margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
      );
  }

  

  getSuccessSnackBar(String message) {
    Get.snackbar(
      "Success",
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.blueAccent,
      colorText: Colors.white,
      borderRadius: 10,
      margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
    );
  }
    void signOut() async{
      await auth.signOut();
    }
  }


