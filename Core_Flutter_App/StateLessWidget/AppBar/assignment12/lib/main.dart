import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: SizedBox(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        )
      ),
    );
  }
}
