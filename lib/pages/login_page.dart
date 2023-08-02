import 'package:e_shop/pages/login_page.dart';
import 'package:e_shop/controllers/auth_controller.dart';
import 'package:e_shop/pages/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
   
    return Scaffold(
      backgroundColor: Color(0xffF5F9FD),
      
      body: Container(
        height: _size.height,
        width: _size.width,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            
            const SizedBox(
              height: 80,
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 10,),
              // padding: const EdgeInsets.all(19),
              
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "e-shop",
                    style: TextStyle(
                      fontFamily: 'Poppins-Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xff0C54BE),
                    
                    ),
                  ),

                 
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 180),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.black),
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "E-Mail Address",
                        hintStyle: const TextStyle(color: Colors.black45),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.black),
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Password",
                        hintStyle: const TextStyle(color: Colors.black45),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(
                  height: 220,
                ), 

                  
                  
                Center(
                    child: ElevatedButton(
                     onPressed: () {
                        AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff0C54BE),
                        onPrimary: Colors.white,
                        shadowColor: Colors.greenAccent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: Size(100, 40), //////// HERE
                      ),
                      
                      child: Text('Login'),
              
                    ),
              
                  ),
              
                    Center(
                      child: RichText(
                        text: TextSpan(children: [
                          const TextSpan(
                            
                            text: "New here ?",
                            style: TextStyle(fontWeight: FontWeight.w700,
                            color: Colors.black
                            ),
                            
                            ),
                          TextSpan(
                              text: "Signup",
                              style: const TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.w700,color: Color(0xff0C54BE),),
                              recognizer: TapGestureRecognizer()..onTap = () {
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> SignUpScreen()));
                                // Get.to(LoginScreen());
                              
                              }
                          ),
                          
                        ]),
                      ),
                    
                    ),
          ],
        ),
      ),
          ]
      
        ),
      ),
    );

  }
}
