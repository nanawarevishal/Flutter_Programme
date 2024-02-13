import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snackbar/Height_Width/HG.dart';
import 'package:snackbar/Router/Rounting.dart';
import 'package:snackbar/Router/Routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        //initialRoute: Routes.screen1,
        // home:  HeightAndWidth(),
        //getPages: getpages,

      );
    } 
}


