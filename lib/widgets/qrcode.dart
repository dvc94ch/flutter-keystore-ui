import 'package:flutter/material.dart';

class QrCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox.fromSize(
        child: Image.network('https://www.rosefestivalkazanlak.com/wp-content/uploads/2018/02/Ethereum-QR-code-1.png'),
        size: Size(200, 200),
      ),
    );
  }
}
