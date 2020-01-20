import 'package:flutter/material.dart';
import '../../localization.dart';
import '../../styles.dart';
import '../../widgets/widgets.dart';

class TermsOfUsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.termsOfUseTitle),
      ),
      body: Container(
        padding: Styles.containerPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Identicon(),
            Text(
              localizations.termsOfUseTitle,
              style: Styles.title,
            ),
            FutureBuilder(
              future: DefaultAssetBundle.of(context).loadString('assets/terms_of_use.txt'),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Expanded(
                    child: Scrollbar(
                      child: SingleChildScrollView(
                        child: Text(snapshot.data),
                      ),
                    ),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            ButtonBar(
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/secret_backup');
                  },
                  child: Padding(
                    padding: Styles.buttonPadding,
                    child: Text(localizations.termsOfUseAcceptButton),
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