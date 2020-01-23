import 'package:flutter/material.dart';
import '../../localization.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.appTitle),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
