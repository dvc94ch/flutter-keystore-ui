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
  final KeyInfo keyInfo;

  Unlocked({@required this.keyInfo});
}
