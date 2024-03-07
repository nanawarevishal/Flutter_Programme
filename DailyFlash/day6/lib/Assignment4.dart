
import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget{
    const Assignment4({super.key});
 
    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Center(
              child: Container(
                  width: 400,
                  height: 150,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 100,
                            height: 100,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                               
                                    border: Border.all(
                                        color: Colors.black
                                    )
                            ),
                            child: Container(
                                color: Colors.red,
                            ),
                        ),
                        Container(
                            width: 100,
                            height: 100,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                
                                    border: Border.all(
                                        color: Colors.black
                                    )
                            ),
                            child: Container(
                                color: Colors.green,
                            ),
                        ),
                        
                      ],
                  ),
              ),
            )
            
        );
    }
}