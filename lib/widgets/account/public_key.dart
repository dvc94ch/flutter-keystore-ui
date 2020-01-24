import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/account/account.dart';

class PublicKey extends StatelessWidget {
  final EdgeInsets padding;

  PublicKey({@required this.padding});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: padding,
        child: BlocBuilder<AccountBloc, AccountState>(
          builder: (context, state) {
            if (state is Unlocked) {
              return Text(state.keyInfo.ss58);
            } else {
              throw 'Invalid to show public key';
            }
          },
        ),
      ),
    );
  }
}
