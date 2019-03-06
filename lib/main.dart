import 'package:flutter/material.dart';
import 'package:state_mgmt_example/src/models/counter.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:state_mgmt_example/src/app.dart';

void main() {
  var counter = Counter();
  runApp(
    ScopedModel<Counter>(
      model: counter,
      child: MyApp(),
    ),
  );
}
