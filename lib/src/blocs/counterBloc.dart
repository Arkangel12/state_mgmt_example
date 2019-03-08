import 'package:state_mgmt_example/src/providers/blocProvider.dart';
import 'dart:async';

class CounterBloc implements BlocBase {
  int _counter;

  // Stream para manejar el counter
  // Stream to manage the counter
  StreamController<int> _counterController = StreamController<int>();
  StreamSink<int> get _inAdd => _counterController.sink;
  Stream<int> get outCounter => _counterController.stream;

  // Stream para manejar las acciones del counter
  // Stream to manage the actions of the counter
  StreamController _actionController = StreamController();
  StreamSink get incrementCounter => _actionController.sink;

  // Constructor
  CounterBloc(){
    _counter = 0;
    _actionController.stream.listen(_handleLogic);
  }

  // Streams must be closed
  // Stream deben de ser cerrados
  void dispose(){
    _actionController.close();
    _counterController.close();
  }

  void _handleLogic(data){
    _counter++;
    _inAdd.add(_counter);
  }
}