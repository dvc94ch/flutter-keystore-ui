import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/account/account.dart';

class QrCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        child: BlocBuilder<AccountBloc, AccountState>(
          builder: (context, state) {
            if (state is Unlocked) {
              return Texture(textureId: state.keyInfo.qr);
            } else {
              throw 'Invalid to show qrcode';
            }
          }
        ),
        width: 200,
        height: 200,
      ),
    );
  }
}
