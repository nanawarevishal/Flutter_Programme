

/*
    5. In the above question now take 3 rows, the first row must be the same. In
        2nd Row place 3 Containers the space taken by them must be in a ratio of
        5:4:1 and The 3 containers in last row must take space in a ratio of 7:2:1.
        Each Container must have a height of 100 and must have a color of your
        choice. Do not specify the width of the container.

*/


import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget{
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            body: Column(
              children: [
                Row(
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
                const SizedBox(height: 20,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        const Column(),
                        Expanded(
                            flex: 5,
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
                            flex: 4,
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
                const SizedBox(height: 20,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        const Column(),
                        Expanded(
                            flex: 7,
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
                            flex: 2,
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
              ],
            ),
        );
  }
    
}