import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Assignment-12"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.amber,
          child: SizedBox(
            height: double.infinity,
            child: Row(
             
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: const Color.fromARGB(255, 255, 7, 210),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: const Color.fromARGB(255, 8, 8, 8),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: const Color.fromARGB(255, 7, 255, 98),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
