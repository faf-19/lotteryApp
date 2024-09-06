import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings/controller/language_controller.dart';


class Settingswitch extends StatelessWidget {
  final String title;
  final Color bgcolor;
  final Color iconColor;
  final IconData icon;
  final Function(bool value) onTap;
  final bool value;
  const Settingswitch({super.key, required this.title, required this.bgcolor, required this.iconColor, required this.icon, required this.onTap, required this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgcolor,
            ),
            child: Icon(icon),
          ),
          const SizedBox(width: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const Spacer(flex: 30),
            Text(
              value ? translation(context).on: translation(context).off,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),

            const SizedBox(width: 18),
          CupertinoSwitch(value: value, onChanged: onTap)

        ],
      ),
    );
  }
}
