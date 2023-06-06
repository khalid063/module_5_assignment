import 'package:flutter/material.dart';
import 'package:module_5_assignment/screens/home_one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment Five',
      home: HomeScreen(),
    );
  }
}

// class HomeScreen extends StatelessWidget{
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           drawer: Drawer(),
//           appBar: AppBar(
//             title: Text('Home Page One'),
//             centerTitle: true,
//             bottom: const TabBar(
//               tabs: [
//                 Tab(icon: Icon(Icons.directions_car)),
//                 Tab(icon: Icon(Icons.directions_transit)),
//                 Tab(icon: Icon(Icons.directions_bike)),
//               ],
//             ),
//           ),
//           body: const TabBarView(
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.directions_car),
//                   SizedBox(height: 20),
//                   Text('Car'),
//                 ],
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.directions_transit),
//                   SizedBox(height: 20),
//                   Text('Train'),
//                 ],
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.directions_bike),
//                   SizedBox(height: 20),
//                   Text('Bicycle'),
//                 ],
//               ),
//               // Icon(Icons.directions_car),
//               // Text('Home One'),
//               // Icon(Icons.directions_transit),
//               // Icon(Icons.directions_bike),
//             ],
//           ),
//         )
//     );
//   }
//
// }

