import 'package:day7/Assignment1.dart';
import 'package:day7/Assignment2.dart';
import 'package:day7/Assignment3.dart';
import 'package:day7/Assignment4.dart';
import 'package:day7/Assignment5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment5()
    );
  }
}
