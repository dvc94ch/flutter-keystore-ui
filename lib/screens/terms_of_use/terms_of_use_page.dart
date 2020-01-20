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
            SizedBox.fromSize(size: Size(1, 30)),
            Text(
              localizations.termsOfUseTitle,
              style: Styles.title,
            ),
            SizedBox.fromSize(size: Size(1, 8)),
            FutureBuilder(
              future: DefaultAssetBundle.of(context).loadString('assets/terms_of_use.txt'),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Expanded(
                    child: Card(
                      child: Scrollbar(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: Styles.containerPadding,
                            child: Text(snapshot.data),
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/secret_backup');
                  },
                  child: Text(localizations.termsOfUseAcceptButton),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
