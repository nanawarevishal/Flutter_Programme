import 'package:flutter/material.dart';
import 'package:instaassingment/InstaAssignment.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  Widget build(BuildContext context){

      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: InstaAssignment(),
      );
  }

}

