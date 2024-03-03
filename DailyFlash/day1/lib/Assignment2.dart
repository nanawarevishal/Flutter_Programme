

import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 163, 163, 163),
                leading: Icon(Icons.home),
                actions: [
                    Icon(Icons.search),
                    Icon(Icons.person),
                    Icon(Icons.window_rounded),
                ],
            ),
        );
  }
    
}