
import 'package:flutter/material.dart';
import 'package:module_5_assignment/screens/home_one.dart';
import 'package:module_5_assignment/screens/home_two.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({Key? key}) : super(key: key);

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Home Page Three'),
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
                'Page No : 3',
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
                  leading: Icon(Icons.home_repair_service),
                  title: Text("Page 02"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home_outlined),
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
            backgroundColor: Colors.red,
            onPressed: () {  },
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 2,
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
