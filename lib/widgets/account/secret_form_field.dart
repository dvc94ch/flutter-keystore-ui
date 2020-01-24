import 'package:flutter/material.dart';

class SecretFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String errorText;

  SecretFormField({
    @required this.controller,
    @required this.labelText,
    @required this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(Icons.vpn_key),
        labelText: labelText,
        errorText: errorText,
      ),
      keyboardType: TextInputType.multiline,
      controller: controller,
      minLines: 5,
      maxLines: 5,
    );
  }
}
