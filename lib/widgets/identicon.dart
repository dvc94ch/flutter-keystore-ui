import 'package:flutter/material.dart';

class Identicon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipOval(
        child: SizedBox.fromSize(
          child: Image.network('https://avatars1.githubusercontent.com/u/43857579'),
          size: Size(100, 100),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}
