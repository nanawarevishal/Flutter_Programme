

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/ImagePicker/ImagePickerController.dart';

class ImagePicker extends StatefulWidget{
    const ImagePicker({super.key});

    State createState()=>_ImagePickerState();
}

class _ImagePickerState extends State{

    imageController controller = Get.put(imageController());

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body:Obx((){
                return Container(
                    width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          backgroundImage: controller.imagePath.isNotEmpty ? FileImage(File(controller.imagePath.toString())) :
                          null,
                      ),
                  
                      TextButton(
                          onPressed: (){
                              controller.getImage();
                          },
                           child: const Text("Pick Image")
                      )
                    ],
                  ),
                );

                
            })
            
        );
    }
    
}