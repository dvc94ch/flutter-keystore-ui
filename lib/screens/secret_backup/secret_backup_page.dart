import 'package:flutter/material.dart';
import '../../localization.dart';
import '../../styles.dart';
import '../../widgets/widgets.dart';

class SecretBackupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.secretBackupTitle),
      ),
      body: Container(
        padding: Styles.containerPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Identicon(),
            Spacer(),
            Text(
              localizations.secretBackupTitle,
              style: Styles.title,
            ),
            Spacer(),
            Text(localizations.secretBackupDescription),
            Spacer(),
            Text(localizations.secretBackupDisclaimer),
            Spacer(),
            // secret
            Text(localizations.secretBackupTips),
            Spacer(),
            ButtonBar(
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/secret_confirm');
                  },
                  child: Padding(
                    padding: Styles.buttonPadding,
                    child: Text(localizations.secretBackupNextButton),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
