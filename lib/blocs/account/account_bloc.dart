import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_keystore_plugin/flutter_keystore_plugin.dart';
import 'package:meta/meta.dart';
import '../blocs.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final FlutterKeystorePlugin keystore;
  final NavigatorBloc navigator;

  AccountBloc({
    @required this.keystore,
    @required this.navigator,
  });

  @override
  AccountState get initialState => Unknown();

  @override
  Stream<AccountState> mapEventToState(
    AccountEvent event,
  ) async* {
    print(event);
    bool unlock = false;
    if (event is Start) {
      final status = await keystore.status();
      switch (status) {
        case Status.Uninitialized:
          yield NoAccount();
          navigator.add(PushNamed('/welcome'));
          break;
        case Status.Locked:
          yield Locked(error: false);
          navigator.add(PushNamed('/login'));
          break;
        case Status.Unlocked:
          unlock = true;
          break;
      }
    }
    if (event is Generate) {
      await keystore.generate(event.password);
      unlock = true;
    }
    if (event is Import) {
      await keystore.import(event.phrase, event.password);
      unlock = true;
    }
    if (event is Unlock) {
      try {
        await keystore.unlock(event.password);
        unlock = true;
      } catch (e) {
        yield Locked(error: true);
      }
    }
    if (event is Lock) {
      navigator.add(PushNamed('/login'));
      yield Future(() async {
        await keystore.lock();
        return Locked(error: false);
      });
    }
    if (unlock) {
      final info = await keystore.info();
      yield Unlocked(keyInfo: info);
      navigator.add(PushNamed('/account_details'));
    }
  }
}
