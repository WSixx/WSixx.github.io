import 'package:flutter/material.dart';

class ChangeWidget extends ChangeNotifier {
  bool _page = false;
  bool get page => _page;

  void add() {
    _page = !page;
    notifyListeners();
  }
}
