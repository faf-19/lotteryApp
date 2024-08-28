import 'package:flutter/material.dart';
import 'package:flutter_application_1/DrawerPage.dart';
import 'package:flutter_application_1/BottomNav.dart';
import 'package:flutter_application_1/TicketPage.dart';



class Upcoming extends StatefulWidget {
  const Upcoming({super.key});

  @override
  State<Upcoming> createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, 
      endDrawer: DrawerPage(),
      bottomNavigationBar: BottomNav(),
      body: SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 40.0, vertical: 25.0), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end, 
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.black,
                      size: 36.0,
                    ), 
                    onPressed: () {
                      // Handle notification icon press
                    },
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 36.0,
                    ), 
                    onPressed: () {
                      // Open the drawer when the menu icon is clicked
                      if (_scaffoldKey.currentState != null) {
                        _scaffoldKey.currentState?.openEndDrawer();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        
        Row(
  mainAxisAlignment: MainAxisAlignment.center, // Center the buttons horizontally
  children: [
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(100, 50), 
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25), // Make the border circular with a radius of 15
    ),
    backgroundColor: Colors.grey// Set your desired width and height
      ),
      
      onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> TicketPage()));

      }, // Add your login logic here
      child: const Text('Tickets', style: TextStyle(color: Colors.black),),
    ),


    SizedBox(width: 20), // Add some space between the buttons
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(200, 50), 
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25), // Make the border circular with a radius of 15
    ),
    backgroundColor: Colors.white // Set your desired width and height
      ),
      onPressed: (){
        
      }, // Add your login logic here
      child: const Text('Upcoming Tickets', style: TextStyle(color: Colors.black),),
    ),

  ],
),

  SizedBox(height: 40,),
  Text('Dining Table',  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
  SizedBox(height: 10,),
  Stack(
    children: [
      Image(
        image: AssetImage('assets/diningTable.png'),
      ),
      Positioned(
        bottom: 10,
        left: 10,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(300, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            backgroundColor: Color.fromARGB(0, 160, 151, 151).withOpacity(0.5),
          ),
          onPressed: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Date'),
              SizedBox(width: 100),
              Text('July 21'),
            ],
          ),
        ),
      ),
    ],
  ),
        

        ]
      )
      )
    );
  }
}