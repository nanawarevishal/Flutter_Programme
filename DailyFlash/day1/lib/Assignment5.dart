

import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget{
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        boxShadow: [
                            BoxShadow(
                                color: Colors.red,
                                offset: Offset(10,-20),
                                blurRadius: 10,
                                blurStyle: BlurStyle.inner)
                        ]
                    ),
                ),
            ),
            
        );
  }
    
}