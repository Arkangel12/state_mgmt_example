import 'dart:async';

abstract class AppModelStreams {
  Stream<int> get counter;

  void incrementCounter();
}

class AppModelStreamsImplementation extends AppModelStreams {
  int _counter = 0;
  StreamController<int> _countController = new StreamController<int>();

  @override
  Stream<int> get counter => _countController.stream;

  @override
  void incrementCounter() {
    _counter++;
    _countController.add(_counter);
  }

  void dispose() {
    _countController.close();
  }
}
