import 'package:day5/Assignment1.dart';
import 'package:day5/Assignment2.dart';
import 'package:day5/Assignment3.dart';
import 'package:day5/Assignment4.dart';
import 'package:day5/Assignment5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
    const MainApp({super.key});

    @override
    Widget build(BuildContext context) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Assignment5()
      );
    }
}
