import 'package:flutter/material.dart';
import 'package:settings/controller/language_controller.dart';

void showLogoutDialog(BuildContext context, Function onLogout) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title:  Text(translation(context).logout, style: TextStyle(
          fontWeight: FontWeight.w400,
        ),),
        content: Text(
          translation(context).logout_text,
        style: TextStyle(
          fontSize:18,
        )),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text(translation(context).cancel),
          ),
          TextButton(
            onPressed: () {
              onLogout(); // Call the logout function
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text(translation(context).logout),
          ),
        ],
      );
    },
  );
}