import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:health_app/Doctors/doctors_home.dart';
import 'package:health_app/blog_home.dart';
import 'package:health_app/profile_home.dart';

import 'HomeHome/home_home.dart';
import 'PharmecyHome/pharmacy_home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentPage = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          HomeHome(),
          BlogHome(),
          DoctorsHome(),
          Pharmacy(),
          ProfileHome(),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          //Home
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.blue.shade900,
            inactiveColor: Colors.blueAccent,
          ),

          //Blog
          BottomBarItem(
            icon: const Icon(Icons.list_alt_rounded),
            title: Text('Blog'),
            activeColor: Colors.purple.shade900,
            inactiveColor: Colors.purpleAccent,
          ),
          //Doctors
          BottomBarItem(
            icon: Icon(Icons.person_rounded),
            title: Text('Doctors'),
            activeColor: Colors.green.shade900,
            inactiveColor: Colors.greenAccent,
          ),

          //Pharmacy
          BottomBarItem(
            icon: Icon(Icons.medication),
            title: Text('Pharmacy'),
            activeColor: Colors.red.shade900,
            inactiveColor: Colors.redAccent,
          ),
          //profile
          BottomBarItem(
            icon: Icon(Icons.person_pin),
            title: Text('Profile'),
            activeColor: Colors.orange.shade900,
            inactiveColor: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }
}
