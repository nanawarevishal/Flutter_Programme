

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snackbar/Router/Routes.dart';
import 'package:snackbar/Router/SecondScreen.dart';


class FirstScreeen extends StatefulWidget{
    
    const FirstScreeen({super.key});
    
    @override
    State<FirstScreeen>createState()=>_FirstScreenState();

}

class _FirstScreenState extends State<FirstScreeen>{

   Map response = {
        "data": [
            
            {"name": "Parth Darji"},
            {"name2": "Darshan Popat"},
            {"name3": "Jitendra Mistry"}
        ],
        "message": "All data get successfully"
    };

    
    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: const Text("First Screen "),
            ),

            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: (){
                                Get.to(const SecondScreen(),arguments: response,transition: Transition.rightToLeft);
                                // Get.toNamed(Routes.screen3,arguments: response);
                                // Navigator.pushNamed(context,Routes.screen2);
                            }, 
                            child: const Text("Second Screen")
                        ),
                        TextButton(
                            onPressed: (){
                                // Get.toNamed("/home");
                                Navigator.pushNamed(context,Routes.screen1);
                            }, 
                            child: const Text("Back")
                        ),
                      ],
                    )
                ],
            ),
        );
    }
}