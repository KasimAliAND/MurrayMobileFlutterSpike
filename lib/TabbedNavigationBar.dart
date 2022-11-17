import 'package:flutter/material.dart';
import 'package:murray_mobile_flutter/Account/AccountPage.dart';
import 'package:murray_mobile_flutter/CreatePage/CreatePage.dart';
import 'package:murray_mobile_flutter/HomePage/HomePage.dart';
import 'package:murray_mobile_flutter/Info/InfoPage.dart';
import 'package:murray_mobile_flutter/Parking/ParkingPage.dart';

class TabbedNavigationBar extends StatefulWidget{

  const TabbedNavigationBar({super.key});

  @override
  State<StatefulWidget> createState() => _TabbedNavigationState();
}

class _TabbedNavigationState extends State<TabbedNavigationBar>{

  static const List<Widget> pages = <Widget>[
    HomePage(),
    CreatePage(),
    InfoPage(),
    ParkingPage(),
    AccountPage()
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return(
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            leading: const Icon(Icons.person, color: Colors.grey,size: 50),
            title: const Text("Hello Paul Morley!", style: TextStyle(color: Colors.grey)),
            actions: const [Icon(Icons.car_repair_rounded, color: Colors.grey,size: 50)],
          ),
          body: IndexedStack(
            index: _selectedIndex,
            children: pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.red,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.create), label: "Create"),
              BottomNavigationBarItem(icon: Icon(Icons.info), label: "Info"),
              BottomNavigationBarItem(icon: Icon(Icons.electric_car), label: "Booking"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
            ],
          ),
        )
    );
  }
}