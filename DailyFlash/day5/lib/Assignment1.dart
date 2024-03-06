

/*
    1.Create a Screen, in the appBar display "Profile Information". In the body,
    display an image of size (height: 250 width:250). Below the image add
    appropriate spacing and then display the user Name and Phone Number
    vertically. The name and phone number must have a font size of 16 and a font
    weight of 500.
*/


import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});

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

                        const SizedBox(height: 40,),
                        Container(
                            height: 250,
                            width: 250,
                            color: Colors.red,
                            child: Image.asset(
                                "assets/images/user.jpg",
                                
                                fit: BoxFit.fill,)
                        ),

                        const SizedBox(height: 20,),

                        RichText(
                            text: const TextSpan(
                                text: "Name: ",
                                style: TextStyle(
                                    fontSize: 16,fontWeight: FontWeight.w500
                                ),
                                children: [
                                    TextSpan(
                                        text: "Jennifer Smidth",
                                        style: TextStyle(
                                            fontSize: 16,fontWeight: FontWeight.normal
                                        ),
                                    ),
                                
                                ]
                            )
                        ),
                        RichText(
                            text: const TextSpan(
                                text: "Phone: ",
                                style: TextStyle(
                                    fontSize: 16,fontWeight: FontWeight.w500
                                ),
                                children: [
                                    TextSpan(
                                        text: "1234567890",
                                        style: TextStyle(
                                            fontSize: 16,fontWeight: FontWeight.normal
                                        ),
                                    ),
                                
                                ]
                            )
                        )
                    ],
                ),
            ),
        );
   }  
}