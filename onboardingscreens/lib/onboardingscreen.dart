// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboardingscreens/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
,


class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          next: const Text('Next', style: TextStyle(fontSize:22 ),),
          done: const Text('Done' , style: TextStyle(fontSize:22 ),),
          skip: const Text('Skip' , style: TextStyle(fontSize:22 ),),
          showSkipButton: true,
          onDone: () => onDone(context),
          dotsDecorator: DotsDecorator(
            size: const Size(10,10),
            activeColor: Colors.deepPurple,
            activeSize: const Size(20,10),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60)
            )

          ),

          pages: [
            PageViewModel(
              decoration: const PageDecoration(

                  imagePadding: EdgeInsets.only(top: 50),
                  bodyTextStyle: TextStyle(fontSize: 25, color: Colors.grey, fontWeight: FontWeight.w400),
                  titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  bodyPadding: EdgeInsets.only(top: 35),

                ),

              title: 'Easy earn, Easy win',
              body: 'Join (app app) today! Transform your home with every win',
              image: Image.asset('assets/winners.png'),
            ),
            PageViewModel(
              decoration: const PageDecoration(
                imagePadding: EdgeInsets.symmetric(vertical: 20),
                bodyTextStyle: TextStyle(fontSize: 22, color: Colors.grey, fontWeight: FontWeight.w400),
                titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                bodyPadding: EdgeInsets.only(top: 35),
              ),
              title: 'Win Luxurious Furniture',
              body: 'Play our lottery for a chance to win luxurious furniture pieces that will transform your space.',
              image: Image.asset('assets/page1.png'),
            ),
            PageViewModel(
              decoration: const PageDecoration(
                imagePadding: EdgeInsets.symmetric(vertical: 20),
                bodyTextStyle: TextStyle(fontSize: 22, color: Colors.grey, fontWeight: FontWeight.w400),
                titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                bodyPadding: EdgeInsets.only(top: 35),
              ),
              title: 'Unlock Your Dream Home',
              body: 'Sign up now and claim your first ticket. Start your journey today!',
              image: Image.asset('assets/signup.png'),
            ),
          ]),
    ));
  }

  void onDone(context) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool("ON_BOARDING", false);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Homepage(),
        ));
  }
}
