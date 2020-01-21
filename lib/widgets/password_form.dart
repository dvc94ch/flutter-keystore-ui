import 'package:flutter/material.dart';
import '../localization.dart';

class CreatePasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Form(
      child: Column(
        children: [
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: localizations.createPasswordWidgetNewPasswordLabel,
            ),
            validator: (String value) {
              return value.length < 8 ? localizations.createPasswordWidgetLengthError : null;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: localizations.createPasswordWidgetConfirmPasswordLabel,
            ),
          ),
        ],
      ),
    );
  }
}
