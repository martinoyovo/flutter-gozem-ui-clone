import 'package:flutter/material.dart';
import 'package:flutter_gozem_ui_clone/pages/acceuil.dart';
import 'package:flutter_gozem_ui_clone/pages/dash.dart';
import 'package:flutter_gozem_ui_clone/pages/home.dart';
import 'package:flutter_gozem_ui_clone/utils/styles.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter-Gozem-Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Styles.primaryColor
      ),
      home: Acceuil()
    );
  }
}