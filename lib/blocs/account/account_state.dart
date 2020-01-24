import 'package:flutter_keystore_plugin/flutter_keystore_plugin.dart';
import 'package:meta/meta.dart';

abstract class AccountState {}

class Unknown extends AccountState {}

class NoAccount extends AccountState {}

class Locked extends AccountState {
  final bool error;

  Locked({@required this.error});
}

class Unlocked extends AccountState {
  final Account account;

  Unlocked({@required this.account});
}

class PaperBackup extends AccountState {
  final bool error;
  final String phrase;
  final Account account;

  PaperBackup({
    @required this.account,
    @required this.phrase,
    @required this.error,
  });
}
