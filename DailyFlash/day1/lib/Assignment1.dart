

import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
          title: const Text("iCoder"),
          centerTitle: true,
          actions: const[ Icon(Icons.home),]
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),
      );

  }
    
}