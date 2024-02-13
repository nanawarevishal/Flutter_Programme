

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc/View/login_screen.dart';
import 'package:mvc/res/Routes/RoutesName.dart';
import 'package:mvc/utils/Utils.dart';

class Splash_Screen extends StatefulWidget{

    State createState()=>_SplashScreenState();
}

class _SplashScreenState extends State{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: const Text("Splash Screen"),
            ),

            body: Column(
                children: [
                    TextButton(
                        onPressed: (){
                            Get.toNamed(RoutesName.loginScreen);
                        }, 
                        child: const Text("Login Screen")
                    )
                ],
            ),
            floatingActionButton: FloatingActionButton(onPressed: (){
                Utils.toastMessage("Ms");
                Utils.SnackBar("title", "MSG");
            }),
        );
    }
}