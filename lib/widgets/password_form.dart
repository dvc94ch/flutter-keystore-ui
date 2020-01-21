import 'package:flutter/material.dart';
import '../localization.dart';

class CreatePasswordForm extends StatefulWidget {
  @override
  State<CreatePasswordForm> createState() => _CreatePasswordFromState();
}

class _CreatePasswordFromState extends State<CreatePasswordForm> {
  final _formKey = GlobalKey<_CreatePasswordFromState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Form(
      key: _formKey,
      autovalidate: true,
      child: Column(
        children: [
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: localizations.createPasswordWidgetNewPasswordLabel,
            ),
            controller: _passwordController,
            validator: (String value) {
              if (value.length < 8) {
                return localizations.createPasswordWidgetLengthError;
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: localizations.createPasswordWidgetConfirmPasswordLabel,
            ),
            controller: _confirmPasswordController,
            validator: (String value) {
              if (!value.isEmpty && value != _passwordController.text) {
                return localizations.createPasswordWidgetMissmatchError;
              }
              return null;
            }
          ),
        ],
      ),
    );
  }
}
