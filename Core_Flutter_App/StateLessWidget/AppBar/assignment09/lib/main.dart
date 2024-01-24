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
        appBar: AppBar(
          title: const Text("Container Assignment 09"),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 39, 250, 2),
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(20)
            ),
            width: 300,
            height: 300,

          ),
        ),
      ),
    );
  }
}
