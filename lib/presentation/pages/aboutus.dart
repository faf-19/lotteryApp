import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_application_1/presentation/widgets/background.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'SignUp.dart';
import 'TicketPage.dart';
import 'home.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 2;

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

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    final Color softWhite = const Color(0xFFF5F5F5);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45, left: 7),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Ionicons.chevron_back_outline, color: softWhite),
                      iconSize: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 80),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                alignment: Alignment.centerLeft,
                child: Text(
                 'About us', // Assuming you have this translation
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: softWhite,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.only(left: 20, top: 20, right: 30, bottom: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: softWhite.withOpacity(0.5)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          'At [App name], we bring excitement and joy to every draw. Our mission is to offer you not just a chance to win, but an opportunity to transform your home '
                              'with stunning furniture. Join us and take a step towards making your dream home a reality.'
                              , // You can add this translation
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            height: 1.5,
                            color: softWhite,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          'Contact us', // Assuming you have this translation
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: softWhite,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.phone, color: softWhite),
                            SizedBox(width: 12),
                            Text(
                              "0955667788",
                              style: TextStyle(fontSize: 20, color: softWhite),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.email, color: softWhite),
                            SizedBox(width: 12),
                            Text(
                              "Example@gmail.com",
                              style: TextStyle(fontSize: 20, color: softWhite),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.location_on, color: softWhite),
                            SizedBox(width: 12),
                            Text(
                              'Mexico, Addis Ababa', // Assuming you have this translation
                              style: TextStyle(fontSize: 20, color: softWhite),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}