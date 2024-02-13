

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snackbar/Router/Routes.dart';

class SecondScreen extends StatefulWidget{
    
    const SecondScreen({super.key});
    
    @override
    State<SecondScreen>createState()=>_SecondScreenState();

}

class _SecondScreenState extends State<SecondScreen>{

    var data = Get.arguments;
    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title:  Text("Second Screen ${data['data'][0]['name']}"),
            ),

            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: (){
                                Get.toNamed(Routes.screen1);
                                // Navigator.pushNamed(context,"/home");
                            }, 
                            child: const Text("Back")
                        ),
                      ],
                    ),
                    
                ],
            ),
        );
    }
}