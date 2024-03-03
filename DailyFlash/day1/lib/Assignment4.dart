
import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget{
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                            color: Colors.red
                        )
                    ),
                ),
            ),
            
        );
  }
    
}