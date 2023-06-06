
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
            backgroundColor: Colors.amberAccent,
            onPressed: () {  },
          ),
        )
    );
  }
}
