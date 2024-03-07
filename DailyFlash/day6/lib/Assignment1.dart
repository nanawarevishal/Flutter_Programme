

import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget{
    const Assignment1({super.key});
 
    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Image.asset("assets/images/images.jpeg",height: 200,width: 200,),
                    const Text("Name: Salad"),
                    const Text("Description: Salad Description...!")
                ],
            ),
        );
    }
}