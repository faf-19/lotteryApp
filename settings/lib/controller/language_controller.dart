import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const String LANGUAGE_CODE = 'languageCode';
const String ENGLISH = 'en';
const String AMHARIC = 'am';

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(LANGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(LANGUAGE_CODE) ?? ENGLISH;
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case ENGLISH:
      return const Locale(ENGLISH);
    case AMHARIC:
      return const Locale(AMHARIC);
    default: // Default case to handle any unexpected values
      return const Locale(ENGLISH); // Fallback to English
  }
}

AppLocalizations translation(BuildContext context) {
  return AppLocalizations.of(context)!; // Ensure non-null return with !
}