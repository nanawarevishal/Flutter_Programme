
/*
    2.Create a Screen in which we have 3 Containers in a Column each container
        must be of height 100 and width 100. Each container must have an image
        as a child.


*/



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment2 extends StatelessWidget{
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("Profile Information",style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.black,
            ),

            body: Center(
                child: Column(
                    children: [
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                                "assets/images/user.jpg",
                                fit: BoxFit.fill,)
                        ),

                        const SizedBox(height: 20,),
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                                "assets/images/user2.jpg",
                                fit: BoxFit.fill,)
                        ),

                        const SizedBox(height: 20,),
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                                "assets/images/user3.jpg",
                                fit: BoxFit.fill,)
                        ),                        
                    ],
                ),
            ),
        );
   }  
}