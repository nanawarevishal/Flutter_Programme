import 'package:dar2/Assignment1.dart';
import 'package:dar2/Assignment2.dart';
import 'package:dar2/Assignment3.dart';
import 'package:dar2/Assignment4.dart';
import 'package:dar2/Assignment5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assignment5()
    );
  }
}
