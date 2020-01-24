import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/account/account.dart';

class LoginForm extends StatefulWidget {
  final EdgeInsets padding;
  final String passwordLabel;
  final String validationError;
  final String loginButton;

  LoginForm({
    @required this.padding,
    @required this.passwordLabel,
    @required this.validationError,
    @required this.loginButton,
  });

  @override
  State createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<_LoginFormState> _key = GlobalKey<_LoginFormState>();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: widget.padding,
                child: BlocBuilder<AccountBloc, AccountState>(
                  builder: (context, state) {
                    final errorText = state is Locked && state.error
                      ? widget.validationError
                      : null;
                    return TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        labelText: widget.passwordLabel,
                        errorText: errorText,
                      ),
                      controller: _passwordController,
                    );
                  }
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    BlocProvider.of<AccountBloc>(context)
                      .add(Unlock(password: _passwordController.text));
                 },
                  child: Text(widget.loginButton),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
