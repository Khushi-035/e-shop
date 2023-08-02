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
    
    return Drawer(
      child: ListView(
        children: <Widget>[
          // _buildUserAccountsDrawerHeader(),
          ListTile(
            textColor: Colors.amberAccent,
            onTap: () {
              
            },
            
            title: Text("Home"),
          ),
          ListTile(
            textColor: Colors.amberAccent,
            onTap: () {
              
              
            },
            
            title: Text("Checkout"),
          ),
          ListTile(
            textColor: Colors.amberAccent,
            onTap: () {
              
              
                  
            },
            
            title: Text("About"),
          ),
          ListTile(
            // selected: profileColor,
            textColor: Colors.amberAccent,
            onTap: () {
              
              
            },
            
            title: Text("Profile"),
          ),
          
        ],
      ),
    );
  }
    
  }



//       appBar: Column(
//         children: [
//           AppBar(
//             leading: Padding(
//               padding: const EdgeInsets.only(left: 8, top: 8),
              
            
            
//             child: Container(
            
//             padding: EdgeInsets.only(top: 50, left: 20, right: 20),
//             child: Column(
//             children: [
//           Row(
//             children: [
//               Card(
//                 child: SizedBox(
//                   width: 150,
//                   height: 100,
//                   child: Center(child: Text('Elevated Card')),
//                 ),
//               ),
//               Card(
//               child: SizedBox(
//               width: 150,
//               height: 100,
//               child: Center(child: Text('Elevated Card')),
//             ),
//           ),
//             ],
//           ),
//           Row(
//             children: [
//               Card(
//                 child: SizedBox(
//                   width: 150,
//                   height: 100,
//                   child: Center(child: Text('Elevated Card')),
//                 ),
//               ),
//               Card(
//             child: SizedBox(
//               width: 150,
//               height: 100,
//               child: Center(child: Text('Elevated Card')),
//             ),
//           ),
//             ],
//           ),
          
          
          
          
//             ],
//           ),
//             ),
//             ),),
//         ],
//       ),
      
//     );
//   }
// }