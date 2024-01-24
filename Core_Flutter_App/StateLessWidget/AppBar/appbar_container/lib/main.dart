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
            title: Text("App-Bar Assignment 01"),
            backgroundColor: Colors.black,
            actions: [
              IconButton(onPressed: (){},
               icon: const Icon(
                Icons.home_max_rounded
               )),
              IconButton(onPressed: (){},
               icon: const Icon(
                Icons.search_rounded
               )),
              IconButton(onPressed: (){},
               icon: const Icon(
                Icons.settings_applications_outlined
               )),
              IconButton(onPressed: (){},
               icon: const Icon(
                Icons.wifi_password
               )),
            ],
          ),
      ),
    );
  }
}
