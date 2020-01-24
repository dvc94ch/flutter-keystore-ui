import 'package:flutter/material.dart';

class CreatePasswordForm extends StatefulWidget {
  final String newPasswordLabel;
  final String passwordLengthError;
  final String confirmPasswordLabel;
  final String passwordMissmatchError;

  CreatePasswordForm({
    @required this.newPasswordLabel,
    @required this.passwordLengthError,
    @required this.confirmPasswordLabel,
    @required this.passwordMissmatchError,
  });

  @override
  State createState() => _CreatePasswordFormState();
}

class _CreatePasswordFormState extends State<CreatePasswordForm> {
  final GlobalKey<_CreatePasswordFormState> _key = GlobalKey<_CreatePasswordFormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      autovalidate: true,
      child: Column(
        children: [
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: widget.newPasswordLabel,
            ),
            controller: _passwordController,
            validator: (String value) {
              if (value.length < 8) {
                return widget.passwordLengthError;
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: widget.confirmPasswordLabel,
            ),
            controller: _confirmPasswordController,
            validator: (String value) {
              if (!value.isEmpty && value != _passwordController.text) {
                return widget.passwordMissmatchError;
              }
              return null;
            }
          ),
        ],
      ),
    );
  }
}
