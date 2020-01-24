import 'package:flutter/material.dart';
import '../../localization.dart';
import '../../styles.dart';
import '../../widgets/widgets.dart';

class RestoreAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.restoreAccountTitle),
      ),
      body: Container(
        padding: Styles.containerPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              localizations.restoreAccountTitle,
              style: Styles.title,
            ),
            SizedBox.fromSize(size: Size(1, 30)),
            Card(
              child: ListTile(
                title: Text(localizations.restoreAccountMessage),
              ),
            ),
            SizedBox.fromSize(size: Size(1, 20)),
            Card(
              child: Padding(
                padding: Styles.containerPadding,
                child: SecretFormField(
                  labelText: localizations.secretFormFieldLabel,
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: Styles.containerPadding,
                child: CreatePasswordForm(),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/account_details');
                  },
                  child: Text(localizations.restoreAccountRestoreButton),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
