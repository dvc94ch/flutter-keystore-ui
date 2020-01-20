import 'package:flutter/material.dart';
import '../localization.dart';

class SecretPhraseFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(Icons.vpn_key),
        labelText: localizations.secretPhraseWidgetLabel,
      ),
      keyboardType: TextInputType.multiline,
      minLines: 5,
      maxLines: 5,
    );
  }
}
