import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:settings/controller/language_controller.dart';
import 'package:settings/presentation/widgets/background.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
                        icon: Icon(Ionicons.chevron_back_outline, color: softWhite,),
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
                    translation(context).help,
                    style: TextStyle(
                      fontSize: 32 ,
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
                            translation(context).help_text,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              height: 1.5,
                              color: softWhite,

                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            translation(context).help_text1,
                            style: TextStyle(
                              fontSize: 20,
                              height: 1.5,
                              color: softWhite,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            translation(context).contactus,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: softWhite,
                            ),
                          ),
                          const SizedBox(height: 10),
                           Row(
                            children: [
                              Icon(Icons.phone, color: softWhite,),
                              SizedBox(width: 12),
                              Text(
                                "0955667788",
                                style: TextStyle(fontSize: 20, color: softWhite,),

                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.email, color: softWhite,),
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
                              Icon(Icons.location_on, color: softWhite,),
                              SizedBox(width: 12),
                              Text(
                                translation(context).mexico,
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
          )
      )

    );
  }
}