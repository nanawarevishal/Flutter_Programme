

/*
1. Create a Screen that will display 3 containers in a Row, the first container
    must be of height 100 and width 100, the 2nd container must be of height
    80 and width 80, and 3rd Container must be of height 70 and width 80.
    Give color to the containers as per your choice.
*/

import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            body: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    const Column(),
                    Container(
                        width: 100,
                        height: 100,
                        color: Colors.orange,
                    ),
                    Container(
                        width: 80,
                        height: 80,
                        color: Colors.green,
                    ),
                    Container(
                        width: 80,
                        height: 70,
                        color: Colors.blue,
                    ),
                ],
            ),
        );
  }
    
}