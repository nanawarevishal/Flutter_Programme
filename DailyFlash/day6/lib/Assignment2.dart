

import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget{
    const Assignment2({super.key});
 
    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.red
                        ),
                        borderRadius:const BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8))
                    ),
                    child: Image.asset("assets/images/images.jpeg",height: 200,width: 200,)
                ),

               const  SizedBox(height: 20,),

                const SizedBox(
                    width: 250,
                    height: 70,
                    child:  Text("Add to Cart")
                )
              ],
            )
            
        );
    }
}