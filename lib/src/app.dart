import 'package:flutter/material.dart';
import 'package:state_mgmt_example/src/screens/myHomePage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter State Management',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'State Management'),
    );
  }
}