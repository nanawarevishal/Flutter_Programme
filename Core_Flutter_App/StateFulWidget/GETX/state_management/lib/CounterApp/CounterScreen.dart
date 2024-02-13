

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/CounterApp/CounterController.dart';

class CounterScreen extends StatefulWidget{

    State createState()=>_CounterScreenState();
}

class _CounterScreenState extends State{

    CounterController controller = Get.put(CounterController());

    void initState(){
        super.initState();

        // Timer.periodic(Duration(seconds: 1), (timer) {
        //     setState(() {
        //       controller.incrementCounter();
        //     });
        //  });
    }

    Widget build(BuildContext context){
       
        return Scaffold(
            body: Container(
                child: Center(
                    child:  Obx((){
                        return Text(
                            controller.counter.obs.toString(),
                            style: const TextStyle(
                                fontSize: 32),
                            );
                        }   
                ),
            ),
            ),
            floatingActionButton: FloatingActionButton(onPressed: (){
                setState(() {
                    controller.incrementCounter();
                });
            }),
        );
    }
}