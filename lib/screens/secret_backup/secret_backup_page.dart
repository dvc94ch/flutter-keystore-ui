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
            SizedBox.fromSize(size: Size(1, 30)),
            Text(
              localizations.secretBackupTitle,
              style: Styles.title,
            ),
            SizedBox.fromSize(size: Size(1, 8)),
            Card(
              child: ListTile(
                title: Text(localizations.secretBackupDescription),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.warning),
                title: Text(localizations.secretBackupDisclaimer),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.vpn_key),
                title: Text(
                  'achieve sight vacant city system frame kid reject island peasant ' +
                  'plastic order turkey genre deputy grocery horn habit stock roast ' +
                  'rotate monkey guard coin',
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text(localizations.secretBackupTips),
              ),
            ),
            Spacer(),
            ButtonBar(
              children: [
                FlatButton(
                  onPressed: () {},
                  child: Padding(
                    padding: Styles.buttonPadding,
                    child: Text(localizations.secretBackupRemindButton),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  textColor: Colors.black,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/secret_confirm');
                  },
                  child: Padding(
                    padding: Styles.buttonPadding,
                    child: Text(localizations.secretBackupNextButton),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
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
