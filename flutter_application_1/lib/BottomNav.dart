 
 import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:flutter_application_1/SignUp.dart';
 import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter_application_1/TicketPage.dart';
import 'package:flutter_application_1/Upcoming.dart';






class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 1;

  final _items = [
    SalomonBottomBarItem(icon: Icon(Icons.home,), title: Text('Home')),
    SalomonBottomBarItem(icon: Icon(Icons.airplane_ticket), title: Text('Ticket')),
    SalomonBottomBarItem(icon: Icon(Icons.info), title: Text('About Us')),
    SalomonBottomBarItem(icon: Icon(Icons.person), title: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
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
                MaterialPageRoute(builder: (context) => TicketPage()),
              );
            } else if (index == 1) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            } else if (index == 2) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Upcoming()),
              );
            } else if (index == 3) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            }
          },
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          backgroundColor: Color(0xFF9D926E),
        ),
      ),
    );
  }
}