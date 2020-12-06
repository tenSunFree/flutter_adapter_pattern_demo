import 'package:flutter/material.dart';
import 'package:flutter_adapter_pattern_demo/home/view/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomeScreen());
}
