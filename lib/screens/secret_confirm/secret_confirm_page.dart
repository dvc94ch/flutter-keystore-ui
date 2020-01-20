import 'package:flutter/material.dart';
import '../../localization.dart';
import '../../styles.dart';
import '../../widgets/widgets.dart';

class SecretConfirmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.secretConfirmTitle),
      ),
      body: Container(
        padding: Styles.containerPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Identicon(),
            SizedBox.fromSize(size: Size(1, 30)),
            Text(
              localizations.secretConfirmTitle,
              style: Styles.title,
            ),
            SizedBox.fromSize(size: Size(1, 30)),
            Card(
              child: ListTile(
                title: Text(localizations.secretConfirmMessage),
              ),
            ),
            SizedBox.fromSize(size: Size(1, 20)),
            Card(
              child: Padding(
                padding: Styles.containerPadding,
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.vpn_key),
                    labelText: localizations.secretConfirmSecretLabel,
                  ),
                  keyboardType: TextInputType.multiline,
                  minLines: 5,
                  maxLines: 5,
                ),
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
                  child: Text(localizations.secretConfirmConfirmButton),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
