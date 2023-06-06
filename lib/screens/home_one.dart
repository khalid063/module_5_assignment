
import 'package:flutter/material.dart';
import 'package:module_5_assignment/screens/home_three.dart';
import 'package:module_5_assignment/screens/home_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Home Page One'),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.directions_car),
                  SizedBox(height: 20),
                  Text('Car'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.directions_transit),
                  SizedBox(height: 20),
                  Text('Train'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.directions_bike),
                  SizedBox(height: 20),
                  Text('Bicycle'),
                ],
              ),
              // Icon(Icons.directions_car),
              // Text('Home One'),
              // Icon(Icons.directions_transit),
              // Icon(Icons.directions_bike),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                const DrawerHeader(child: Text("Drawer Header")),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Page 01"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.contact_mail),
                  title: Text("Page 02"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Page 03"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen3()));
                  },
                ),

              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.deepPurple,
            onPressed: () {  },
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const  [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Page01", ),
              BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Page02", ),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Page03", ),
            ],
            currentIndex: 1,
            onTap: (int index){
              if(index == 0){
                Navigator.push(context,  MaterialPageRoute(builder: (context) => HomeScreen()));
              }
              if(index == 1){
                Navigator.push(context,  MaterialPageRoute(builder: (context) => HomeScreen2()));
              }
              if(index == 2){
                Navigator.push(context,  MaterialPageRoute(builder: (context) => HomeScreen3()));
              }
            },
          ),
        )
    );
  }
}
