import 'package:flutter/material.dart';
import 'package:flutter_gozem_ui_clone/pages/home.dart';
import 'package:flutter_gozem_ui_clone/utils/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter-Gozem-Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Styles.primaryColor
      ),
      home: Home()
    );
  }
}