import 'package:flutter/material.dart';
import 'package:state_mgmt_example/src/screens/myHomePage.dart';
//import 'package:state_mgmt_example/src/screens/myHomePageStreams.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter State Management',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Get It'),
//      home: MyHomePageStreams(title: 'Get It'),
    );
  }
}