import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _crudOpen = false;
  bool get crudOpen => _crudOpen;
  set crudOpen(bool value) {
    _crudOpen = value;
  }

  bool _excluiEditaOpen = false;
  bool get excluiEditaOpen => _excluiEditaOpen;
  set excluiEditaOpen(bool value) {
    _excluiEditaOpen = value;
  }
}
