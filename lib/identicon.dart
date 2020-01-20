import 'package:flutter/material.dart';

class Identicon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipOval(
        child: SizedBox.fromSize(
          child: Image.network('https://avatars1.githubusercontent.com/u/43857579'),
          size: Size(100, 100),
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2.0, color: Colors.black),
      ),
    );
  }
}
