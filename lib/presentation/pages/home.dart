
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/pages/BottomNav.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'SignUp.dart';
import 'TicketPage.dart';
import 'aboutus.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final _items = [
    SalomonBottomBarItem(icon: Icon(Icons.home,), title: Text('Home')),
    SalomonBottomBarItem(icon: Icon(CupertinoIcons.ticket), title: Text('Ticket')),
    SalomonBottomBarItem(icon: Icon(Icons.info), title: Text('About Us')),
    SalomonBottomBarItem(icon: Icon(Icons.person), title: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(

      child: ClipRRect(

        child: SalomonBottomBar(
          items: _items,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            if (index == 0) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
            } else if (index == 1) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => TicketPage()),
              );
            } else if (index == 2) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Aboutus()),
              );
            } else if (index == 3) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Signup()),
              );
            }
          },
          selectedItemColor: Color(0xFFD7B58D),
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black87,
        ),
      ),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('oil') ,
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}