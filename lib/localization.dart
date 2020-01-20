import 'dart:async';
import 'package:flutter/material.dart';

class AppLocalizations {
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(
      context,
      AppLocalizations,
    );
  }

  String get appTitle => 'Flutter Keystore';

  String get welcomeTitle => 'Welcome to Sunshine';
  String get welcomeMessage =>
    'Sunshine is a secure DAO for Substrate.\n' +
    'It allows you to hold dots & tokens, and serves as ' +
    'your bridge to decentralized applications.';
  String get welcomeContinueButton => 'Continue';

  String get createPasswordTitle => 'Create Password';
  String get createPasswordNewPasswordLabel => 'New password (min 8 chars)';
  String get createPasswordConfirmPasswordLabel => 'Confirm password';
  String get createPasswordCreateButton => 'Create';
  String get createPasswordImportButton => 'Import with seed phrase';

  String get accountImageTitle => 'Your unique account image';
  String get accountImageMessage1 =>
    'This image, was programmatically generated for you with your account number.';
  String get accountImageMessage2 =>
    'You\'ll see this image every time you need to confirm a transaction.';
  String get accountImageNextButton => 'Next';
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  @override
  Future<AppLocalizations> load(Locale locale) {
    return Future(() => AppLocalizations());
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) {
    return false;
  }

  @override
  bool isSupported(Locale locale) {
    return locale.languageCode.toLowerCase().contains('en');
  }
}
