


import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget{
    const Assignment3({super.key});
 
    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                            Container(
                                width: 100,
                                height: 100,
                                color: Colors.red,
                            ),
                            Container(
                                width: 100,
                                height: 100,
                                color: const Color.fromARGB(255, 222, 54, 244),
                            ),
                        ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                            Container(
                                width: 100,
                                height: 100,
                                color: Colors.orange,
                            ),
                            Container(
                                width: 100,
                                height: 100,
                                color:  Colors.green,
                            ),
                        ],
                    )
                ],
            )
            
        );
    }
}