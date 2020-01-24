import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/account/account.dart';

class Identicon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipOval(
        child: SizedBox(
          child: BlocBuilder<AccountBloc, AccountState>(
            builder: (context, state) {
              if (state is Unlocked) {
                return Texture(textureId: state.keyInfo.blocky);
              } else {
                throw 'Invalid to show a blocky';
              }
            }
          ),
          width: 100,
          height: 100,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}
