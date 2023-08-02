import 'package:e_shop/controllers/auth_controller.dart';
import 'package:e_shop/pages/home_screen.dart';
import 'package:e_shop/pages/login_page.dart';
import 'package:e_shop/pages/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(AuthController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Shop',
      home: LoginScreen(),
    );
  }
} 

