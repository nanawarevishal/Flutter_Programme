

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:snackbar/Router/FirstScreen.dart';
import 'package:snackbar/Router/Routes.dart';

class MyNavigator extends StatelessWidget{

   
    const MyNavigator({super.key});

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: const Text("Navigator Using GetX"),
                centerTitle: true,
            ),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            TextButton(
                                onPressed: (){
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstScreeen()));
                                      Get.toNamed(Routes.screen2);
                                //    Navigator.pushNamed(context,Routes.screen1);
                                }, 
                                child: const Text("Go to next Page")
                            ),
                            
                      ],
                    )
                ],
            ),
        );
    }
}