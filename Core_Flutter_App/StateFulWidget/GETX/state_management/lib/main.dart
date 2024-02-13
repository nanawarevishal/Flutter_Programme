import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/ImagePicker/ImagePicker.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {

    MainApp({super.key});

    int x = 0;

    @override
    Widget build(BuildContext context) {
      return   GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: ImagePicker()
      );
    }
}
