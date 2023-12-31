import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.black),
    );
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0), // here the desired height
          child: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: const Text('e-shop',
          
          style: TextStyle(
                        
                        fontFamily: 'Poppins-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Color(0xffF5F9FD),
                      
                      ),),
        ),
          ),
      ),

      // appBar: Column(
      //   children: [
      //     AppBar(
      //       leading: Padding(
      //         padding: const EdgeInsets.only(left: 8, top: 8),
              
            
            
            // child: Container(
            
            // padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          body: Container(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
              children: [
            Row(
              children: [
                Card(
                  child: SizedBox(
                    
                    width: 150,
                    height: 100,
                    child: Center(child: Text('Elevated Card')),
                  ),
                ),
                Card(
                child: SizedBox(
                width: 150,
                height: 100,
                child: Center(child: Text('Elevated Card')),
              ),
            ),
              ],
            ),
            Row(
              children: [
                Card(
                  child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Center(child: Text('Elevated Card')),
                  ),
                ),
                Card(
              child: SizedBox(
                width: 150,
                height: 100,
                child: Center(child: Text('Elevated Card')),
              ),
            ),
              ],
            ),
            
            
            
            
              ],
            ),
          ),
            );
            
  }
}