import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(66, 17, 16, 16),

      body: Padding(padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       

        children: <Widget>[
          Text('Welcome  \n to {app name}', style: TextStyle(color: Colors.white, fontSize: 40),
          ) ,
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
             const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'User name',
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.lock, color: Colors.grey),
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
             const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.lock, color: Colors.grey),
              ),
              style: TextStyle(color: Colors.white),
            ),
  const SizedBox(height: 30),


            // Login Button
            ElevatedButton(
               style: ElevatedButton.styleFrom(
    fixedSize: const Size(300, 50), // Set your desired width and height
  ),
              onPressed: null, // Add your login logic here
              child: const Text('SignUp'),
            ),

            const SizedBox(height: 50),

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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
            },
            child: const Text('Do you have an Account? Login',
              
              style: TextStyle(color: Colors.white),
            ),)

           )
        ],
      ),
      ),
    );
  }
}