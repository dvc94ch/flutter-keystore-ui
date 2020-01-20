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
  String get createPasswordLengthError => 'Password needs to be at least eight chars';

  String get accountImageTitle => 'Your unique account image';
  String get accountImageMessage1 =>
    'This image, was programmatically generated for you using your account number.';
  String get accountImageMessage2 =>
    'You\'ll see this image every time you need to confirm a transaction.';
  String get accountImageNextButton => 'Next';

  String get termsOfUseTitle => 'Terms of use';
  String get termsOfUseAcceptButton => 'Accept';

  String get secretBackupTitle => 'Secret Backup Phrase';
  String get secretBackupDescription =>
    'Your secret backup phrase makes it easy to back up and restore your account.';
  String get secretBackupDisclaimer =>
    'Never disclose your backup phrase. Anyone with this phrase can take ' +
    'your dots forever.';
  String get secretBackupTips =>
    'Tips:\n\n' +
    'Store this phrase in a password manager like 1password.\n\n' +
    'Write this phrase on a piece of paper and store it in a secure location. If you ' +
    'want even more security, write it down on multiple pieces of paper and store ' +
    'each in two to three different locations.\n\n' +
    'Memorize this phrase.';
  String get secretBackupNextButton => 'Next';
  String get secretBackupRemindButton => 'Remind me later';

  String get secretConfirmTitle => 'Confirm Secret Phrase';
  String get secretConfirmMessage => 'Please select each word in order to ensure it\'s correct.';
  String get secretConfirmSecretLabel => 'Secret phrase';
  String get secretConfirmConfirmButton => 'Confirm';
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
