import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:settings/controller/language_controller.dart';
import 'package:settings/presentation/pages/loginpage.dart';
import 'package:settings/presentation/pages/setting_changepassword.dart';
import 'package:settings/presentation/pages/setting_language.dart';
import 'package:settings/presentation/widgets/background.dart';
import 'package:settings/presentation/pages/setting_privacy.dart';
import 'package:settings/presentation/pages/setting_help.dart';
import 'package:settings/presentation/pages/settings_item.dart';
import 'package:settings/presentation/pages/darkmode_switch.dart';
import 'package:settings/presentation/pages/setting_logout.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isDarkMode = false;
  String selectedLanguage = 'English';
  List<String> languages = ['English', 'Amharic'];

  @override
  void initState() {
    super.initState();
    _loadSelectedLanguage();
  }

  Future<void> _loadSelectedLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      selectedLanguage = prefs.getString('languageName') ?? 'English';
    });
  }

  Future<void> _performLogout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('userToken');

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const Loginpage()),
          (route) => false,
    );
  }

  void showLogoutDialog(BuildContext context, VoidCallback onConfirm) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(translation(context).logout),
          content: Text(translation(context).logout_text),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(translation(context).cancel),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                onConfirm();
              },
              child: Text(translation(context).logout),
            ),
          ],
        );
      },
    );
  }

  void _showLanguageMenu(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return LanguageSelectionDialog(
          languages: languages,
          selectedLanguage: selectedLanguage,
          onLanguageSelected: (language) async {
            setState(() {
              selectedLanguage = language; // Update the selected language
            });

            // Change locale based on selected language
            Locale newLocale;
            switch (language) {
              case 'Amharic':
                newLocale = const Locale('am');
                break;
              default: // English
                newLocale = const Locale('en');
            }

            // Persist the selected language name
            await setLocaleInPreferences(language);
            MyApp.setLocale(context, newLocale); // Update the locale
          },
        );
      },
    );
  }

  Future<void> setLocaleInPreferences(String languageName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageName', languageName);
  }

  @override
  Widget build(BuildContext context) {
    final Color softWhite = const Color(0xFFF5F5F5);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomBackground(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              const SizedBox(height: 90),
              Text(
                translation(context).settings,
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: softWhite),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Settingswitch(
                      title: translation(context).darkmode,
                      icon: Ionicons.moon,
                      bgcolor: softWhite,
                      iconColor: Colors.black,
                      value: isDarkMode,
                      onTap: (value) {
                        setState(() {
                          isDarkMode = value;
                        });
                      },
                    ),
                    const SizedBox(height: 30),
                    Settingsitem(
                      title: translation(context).changepassword,
                      icon: Ionicons.lock_closed,
                      bgcolor: softWhite,
                      iconColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Changepassword()),
                        );
                      },
                    ),
                    const SizedBox(height: 30),
                    Settingsitem(
                      title: translation(context).language, // Display the selected language name
                      icon: Ionicons.language_outline,
                      bgcolor: softWhite,
                      iconColor: Colors.black,
                      onTap: () {
                        _showLanguageMenu(context);
                      },
                    ),
                    const SizedBox(height: 30),
                    Settingsitem(
                      title: translation(context).help,
                      icon: Ionicons.help,
                      bgcolor: softWhite,
                      iconColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Help()),
                        );
                      },
                    ),
                    const SizedBox(height: 30),
                    Settingsitem(
                      title: translation(context).privacy,
                      icon: Ionicons.shield_checkmark,
                      bgcolor: softWhite,
                      iconColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Privacy()),
                        );
                      },
                    ),
                    const SizedBox(height: 30),
                    Settingsitem(
                      title: translation(context).logout,
                      icon: Ionicons.log_out,
                      bgcolor: softWhite,
                      iconColor: Colors.black87,
                      onTap: () {
                        showLogoutDialog(context, () {
                          _performLogout(context);
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}