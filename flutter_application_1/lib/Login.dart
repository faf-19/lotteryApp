import 'package:flutter/material.dart';
import 'package:flutter_application_1/SignUp.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(66, 17, 16, 16),

      body: Padding(padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       

        children: <Widget>[
          const Align(alignment: Alignment.center,
          child: Text('Welcome  \n Back!', style: TextStyle(color: Colors.white, fontSize: 40),
          ) ,),
           const SizedBox(height: 50),


           const TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.email, color: Colors.grey),
              ),
              style: TextStyle(color: Colors.white),
            ),

            const SizedBox(height: 20),

            // Password TextField
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.lock, color: Colors.grey),
              ),
              style: TextStyle(color: Colors.white),
            ),

            const SizedBox(height: 25),


const Align(alignment: Alignment.centerRight,
child: Text(
                'Forgot password?',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),),
               const SizedBox(height: 50),

            // Login Button
            ElevatedButton(
               style: ElevatedButton.styleFrom(
    fixedSize: const Size(300, 50), // Set your desired width and height
  ),
              onPressed: null, // Add your login logic here
              child: const Text('Login'),
            ),

            const SizedBox(height: 40),

           ElevatedButton.icon(
  onPressed: () {
    // Add your Google login logic here
  },
  icon: const Icon(Icons.g_translate),
  label: const Text('Continue with Google'),
  style: ElevatedButton.styleFrom(
    primary: Colors.transparent, // Set background color to transparent
    elevation: 0, // Remove shadow
    side: const BorderSide(width: 1.0, color: Color.fromARGB(255, 219, 225, 23)), // Add a border
  ),
),


           
             const SizedBox(height: 100),

            // New User Sign Up Text
           Align(alignment: Alignment.bottomRight,
           child:  TextButton(
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp()));
            },
            child: const Text('New user? Sign up',
              
              style: TextStyle(color: Colors.white),
            ),)

           )
        ],
      ),
      ),
    );
  }
}