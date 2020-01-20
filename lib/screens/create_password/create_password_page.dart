import 'package:flutter/material.dart';
import '../../localization.dart';
import '../../styles.dart';

class CreatePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.createPasswordTitle),
      ),
      body: Container(
        padding: Styles.containerPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              localizations.createPasswordTitle,
              style: Styles.title,
            ),
            SizedBox.fromSize(size: Size(1, 30)),
            Card(
              child: Padding(
                padding: Styles.containerPadding,
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          labelText: localizations.createPasswordNewPasswordLabel,
                        ),
                        validator: (String value) {
                          return value.length < 8 ? localizations.createPasswordLengthError : null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          labelText: localizations.createPasswordConfirmPasswordLabel,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            ButtonBar(
              children: [
                FlatButton(
                  onPressed: () {},
                  child: Padding(
                    padding: Styles.buttonPadding,
                    child: Text(localizations.createPasswordImportButton),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  textColor: Colors.black,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/account_image');
                  },
                  child: Padding(
                    padding: Styles.buttonPadding,
                    child: Text(localizations.createPasswordCreateButton),
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
