import 'package:e_shop/controllers/auth_controller.dart';
import 'package:e_shop/pages/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

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
                    padding: const EdgeInsets.only(top: 150),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.black),
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Name",
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
                  height: 120,
                ), 

                  
                  
                Center(
                    child: ElevatedButton(
                      onPressed: () {
                        
                            
                              AuthController
                              .instance
                              .registerUser(emailController.text.trim(), passwordController.text.trim());
                            
                          
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff0C54BE),
                        onPrimary: Colors.white,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: Size(190, 40),
                      ),
                      
                      child: Text('Signup'),
              
                    ),
              
                  ),
              
                    Center(
                      child: RichText(
                        text: TextSpan(children: [
                          const TextSpan(
                            
                            text: "Already have an account ?",
                            style: TextStyle(fontFamily: 'Poppins-Bold',
                      fontWeight: FontWeight.bold,
                            color: Colors.black
                            ),
                            
                            ),
                          TextSpan(
                              text: "Login",
                              style: const TextStyle(fontFamily: 'Poppins-Bold', fontWeight: FontWeight.bold,color: Color(0xff0C54BE),),
                              recognizer: TapGestureRecognizer()..onTap = () {
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> LoginScreen()));
                                
                              
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
