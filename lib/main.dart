import 'package:flutter/material.dart';
import 'package:universe_brief/containerview.dart';




void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: ContainerView(),
      debugShowCheckedModeBanner: false,
    );
  }
}