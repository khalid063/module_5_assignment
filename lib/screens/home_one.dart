
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
          body: Center(
            child: Container(
              child: const Text(
                'Page No : 1',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepOrange
                ),
              ),
            ),
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
                  leading: Icon(Icons.home_outlined),
                  title: Text("Page 02"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home_repair_service),
                  title: Text("Page 03"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen3()));
                  },
                ),

              ],
            ),
          ),
          //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
            currentIndex: 0,
            selectedItemColor: Colors.deepPurpleAccent,
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
