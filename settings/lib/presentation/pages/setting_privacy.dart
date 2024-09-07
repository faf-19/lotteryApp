import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:settings/controller/language_controller.dart';
import 'package:settings/presentation/widgets/background.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  final Color softWhite = const Color(0xFFF5F5F5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  translation(context).privacy,
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
                        SizedBox(height: 20),
                        Text(
                         translation(context).privacy_text,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            height: 1.5,
                            color: softWhite,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                         translation(context).privacy_text1,
                          style: TextStyle(
                            fontSize: 20,
                            height: 1.5,
                            color: softWhite,
                          ),
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