

import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.red
                        )
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Image.asset("assets/img.jpg",
                    ),
                ),
            ),
        );
  }
    
}