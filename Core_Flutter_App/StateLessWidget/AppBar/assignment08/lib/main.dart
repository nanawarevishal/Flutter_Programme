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
        appBar: AppBar(title: const Text("Container Assignment 08")),
        body: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(123, 72, 231, 24),
                border:Border.all(color: Color.fromARGB(255, 243, 0, 0))
              ),
              width: 300,
              height: 300,
            ),
        ),
      ),
    );
  }
}
