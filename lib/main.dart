import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'localization.dart';
import 'create_password/create_password.dart';
import 'welcome/welcome.dart';

void main() {
  // Override is necessary to prevent Unknown platform' flutter startup error.
  debugDefaultTargetPlatformOverride = TargetPlatform.android;
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppLocalizations().appTitle,
      localizationsDelegates: [
        AppLocalizationsDelegate(),
      ],
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomePage(),
        '/create_password': (context) => CreatePasswordPage(),
      },
    );
  }
}
