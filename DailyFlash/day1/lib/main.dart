import 'package:day1/Assignment1.dart';
import 'package:day1/Assignment2.dart';
import 'package:day1/Assignment3.dart';
import 'package:day1/Assignment4.dart';
import 'package:day1/Assignment5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Assignment5()
  
    );
  }
}
