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
          title: const Text("Assignment 05"),
        ),
    
        body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                    "img.jpg",
                    width: 150,
                    height: 150,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                    "img2.jpg",
                     width: 150,
                    height: 150,
                ),
                  const SizedBox(
                  width: 20,
                ),
                Image.network(
                    "https://cdn.pixabay.com/photo/2016/08/11/23/55/trees-1587301_640.jpg",
                     width: 150,
                    height: 150,
                ),
              ],
            ),
        ),
      ),
    );
  }
}
