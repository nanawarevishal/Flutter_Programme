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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.black,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: const Color.fromARGB(255, 180, 2, 2),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Color.fromARGB(255, 239, 255, 14),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Color.fromARGB(255, 0, 254, 8),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Color.fromARGB(255, 0, 217, 255),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Color.fromARGB(255, 34, 0, 255),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Color.fromARGB(255, 251, 1, 1),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Color.fromARGB(255, 180, 3, 234),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: const Color.fromARGB(255, 235, 235, 235),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Color.fromARGB(187, 0, 0, 0),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.black,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Color.fromARGB(255, 239, 155, 66),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
