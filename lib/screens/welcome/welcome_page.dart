import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../localization.dart';
import '../../styles.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return  Scaffold(
      appBar: AppBar(
        title: Text(localizations.welcomeTitle),
      ),
      body: Container(
        padding: Styles.containerPadding,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(36.0),
              child: SizedBox.fromSize(
                child: SvgPicture.asset('assets/logo.svg'),
                size: Size(300.0, 300.0),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 5.0, color: Colors.black),
              ),
            ),
            Spacer(),
            Text(
              localizations.welcomeTitle,
              style: Styles.title,
            ),
            Spacer(),
            Text(
              localizations.welcomeMessage,
              style: Styles.message,
              textAlign: TextAlign.center,
            ),
            Spacer(),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/create_password');
              },
              child: Padding(
                padding: Styles.buttonPadding,
                child: Text(localizations.welcomeContinueButton),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
