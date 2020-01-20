import 'package:flutter/material.dart';
import '../../localization.dart';
import '../../styles.dart';
import '../../widgets/widgets.dart';

class AccountDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.accountDetailsTitle),
      ),
      body: Container(
        padding: Styles.containerPadding,
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Identicon(),
            SizedBox.fromSize(size: Size(1, 30)),
            Text(
              'Account 1',
              style: Styles.title,
            ),
            SizedBox.fromSize(size: Size(1, 30)),
            QrCode(),
            SizedBox.fromSize(size: Size(1, 30)),
            Card(
              child: Padding(
                padding: Styles.containerPadding,
                child: Text('0x4e6cf0ed2d8bbf1fbbc9f2a100602ceba4bf1319'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
