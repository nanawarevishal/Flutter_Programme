import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/components/backGround.dart';
import 'package:quizapp/pages/CongratulationsPage.dart';
import 'package:quizapp/pages/HomePage.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quizapp/pages/ProfilePage.dart';
import 'package:quizapp/pages/loginPage.dart';


void main()async {
  await GetStorage.init();
  runApp( const MainApp());
}

class MainApp extends StatelessWidget {

    static GetStorage storage = GetStorage();

    const MainApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: storage.read('token')!=null ? const HomePage() : const LoginPage(),
      );
    }
}
