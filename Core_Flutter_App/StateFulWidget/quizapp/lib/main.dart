import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/pages/registerPage.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

    // final SharedPreferences prefs;

    const MainApp({super.key});

    @override
    Widget build(BuildContext context) {
      return  const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: RegisterPage(),
      );
    }
}
