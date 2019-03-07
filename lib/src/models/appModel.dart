import 'package:flutter/material.dart';

abstract class AppModel extends ChangeNotifier {
  int get counter;

  void incrementCounter();
}

class AppModelImplementation extends AppModel {
  int _counter = 0;

  @override
  int get counter => _counter;

  @override
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}
