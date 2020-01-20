import 'package:flutter/material.dart';
import '../../localization.dart';
import '../../styles.dart';
import '../../widgets/widgets.dart';

class AccountImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.accountImageTitle),
      ),
      body: Container(
        padding: Styles.containerPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Identicon(),
            Spacer(),
            Text(
              localizations.accountImageTitle,
              style: Styles.title,
            ),
            Spacer(),
            Text(
              localizations.accountImageMessage1,
              style: Styles.message,
            ),
            Spacer(),
            Text(
              localizations.accountImageMessage2,
              style: Styles.message,
            ),
            Spacer(),
            ButtonBar(
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/terms_of_use');
                  },
                  child: Padding(
                    padding: Styles.buttonPadding,
                    child: Text(localizations.accountImageNextButton),
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
