
import 'package:flutter/material.dart';
import 'package:module_5_assignment/screens/home_one.dart';
import 'package:module_5_assignment/screens/home_three.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Home Page Two'),
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
                'Page No : 2',
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
                  leading: Icon(Icons.home),
                  title: Text("Page 02"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home_max),
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
            backgroundColor: Colors.amberAccent,
            onPressed: () {  },
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 1,
            selectedItemColor: Colors.deepPurpleAccent,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Page01", ),
              BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Page02", ),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Page03", ),
            ],
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
