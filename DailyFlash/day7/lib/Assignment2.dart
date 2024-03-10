


/*
    2. Create a Screen that displays an `Icon` widget representing a star the size of the
        icon must be 40 and the color of the icon must be orange, beside the icon place a
        `Text` widget with the content "Rating: 4.5". Apply a font size of 25 and bold
        weight to the text. Refer to below image.

*/

import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget{
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    const Row(),
                    Container(
                       padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black
                            ),
                            borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                                Icon(Icons.star,color: Colors.orange,size: 45,),

                                Text("Rating: 4.5",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                            ],
                        ),
                    ),
                  
                ],
            ),
        );
  }
    
}