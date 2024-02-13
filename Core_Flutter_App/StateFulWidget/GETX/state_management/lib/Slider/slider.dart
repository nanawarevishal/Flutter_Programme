
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/Slider/SliderController.dart';

class slider extends StatefulWidget{

    State createState()=>_sliderState();
}

class _sliderState extends State{

    final SliderController controller = Get.put(SliderController());

    Widget build(BuildContext context){
        print("rebuild");
        return Scaffold(
            body: Column(children: 
            [
                Obx(() => 
                Container(
                    width: 100,
                    height: 100,
                    color: Colors.red.withOpacity(controller.opacity.value),
                )),
                Obx(() => 
                Slider(value: controller.opacity.value, onChanged: (value){
                    controller.opacity.value = value;
                    setState(() {
                        controller.setOpacity(value);
                    });
                })
                )
            ]),
        );
    }
}