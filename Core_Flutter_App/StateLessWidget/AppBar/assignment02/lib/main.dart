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
          title:  new Center(child: const Text("Assignment 02"),),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: (){},
               icon: const Icon(
                Icons.search_rounded
               )
            ),
            IconButton(
              onPressed: (){},
               icon: const Icon(
                Icons.photo_size_select_small_rounded
               )
            )
          ],
        ),
      ),
    );
  }
}
