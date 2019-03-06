import 'package:scoped_model/scoped_model.dart';

class Counter extends Model{
  int value = 0;

  void increment(){
    value += 1;
    notifyListeners();
  }
}