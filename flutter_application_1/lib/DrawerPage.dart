import 'package:flutter/material.dart';



class Line10 extends StatefulWidget {
  const Line10({super.key});

  @override
  State<Line10> createState() => _Line10State();
}

class _Line10State extends State<Line10> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 2,
      color: Colors.grey,

    );
  }
}

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(35), bottomLeft: Radius.circular(35)),


        ),

    child: Column(
      children: [
          
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            width: 170,
            height: 169,
            decoration: ShapeDecoration(
              color: Color(0xFF151206),
              shape: OvalBorder(),
            ),
            child: Icon(Icons.person, size: 80, color: Colors.white),
          ),
          SizedBox(height: 25,),
          Text('User Name', style: TextStyle(fontSize: 25),),
          SizedBox(height: 40),

      


          ListTile(
            leading: Icon(Icons.person),

          onTap: (){},

            title: Text('Profile', style: TextStyle(fontSize: 20,),),
          ),
          Line10(),
          SizedBox(height: 15,),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home', style: TextStyle(fontSize: 20,),),

             onTap: (){},
          ),

          Line10(),
          SizedBox(height: 15,),
          ListTile(
            leading: Icon(Icons.airplane_ticket),
            title: Text('Tickets', style: TextStyle(fontSize: 20,),),

             onTap: (){},

          ),

          Line10(),
          SizedBox(height: 15,),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us', style: TextStyle(fontSize: 20,),),
             onTap: (){},
          ),

          Line10(),
          SizedBox(height: 15,),
          ListTile(
            leading: Icon(Icons.announcement),
            title: Text('Announcement', style: TextStyle(fontSize: 20,),),
             onTap: (){},
          ),

          Line10(),
          SizedBox(height: 15,),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings', style: TextStyle(fontSize: 20,),),
             onTap: (){},
          ),
          Line10(),
          SizedBox(height: 15,),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log out', style: TextStyle(fontSize: 20,),),
             onTap: (){},
          ),
          Line10(),
          SizedBox(height: 15,),
        ],
    ),

      ),
    );
  }
}