

/*
    4. Create a Screen in which we have 3 containers placed in a Row, the space
        taken by the containers must be in proportion 6:3:1. The container must
        have a height of 100 don’t give width to the Container.

*/

import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget{
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            body: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    const Column(),
                    Expanded(
                        flex: 6,
                      child: Container(
                          height: 100,
                       
                         padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              border: Border.all(
                                  color: Colors.black
                              ),
                              borderRadius: BorderRadius.circular(10),
                          ),
                          
                      ),
                    ),
                    Expanded(
                        flex: 3,
                      child: Container(
                          height: 100,
                         
                         padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 105, 114, 240),
                              border: Border.all(
                                  color: Colors.black
                              ),
                              borderRadius: BorderRadius.circular(10), 
                          ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                      child: Container(
                          height: 100,
                          
                         padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 105, 240, 150),
                              border: Border.all(
                                  color: Colors.black
                              ),
                              borderRadius: BorderRadius.circular(10), 
                          ),
                      ),
                    ),
                ],
            ),
        );
  }
    
}