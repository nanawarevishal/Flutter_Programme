

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/FavouriteItem/FavouriteController.dart';

class GetFavourite extends StatefulWidget{

    const GetFavourite({super.key});

    State createState()=>_GetFavouriteState();
}

class _GetFavouriteState extends State{

    List<String>fruitList = ["Orange","Apple","Mango","Banana","Guava","Cherry"];

    List<String>templs = [];

    final FavouriteController controller = Get.put(FavouriteController());

    Widget build(BuildContext context){
        print("buid");
        return Scaffold(
        
            body: ListView.builder(
                
                itemCount: controller.fruitList.length,
                itemBuilder: (context,index){
                return Card(
                
                   child: ListTile(
                      onTap: () {
                            controller.toggleFuit(controller.fruitList[index]);
                      },
                        
                      title:Obx(() => Text(controller.fruitList[index])) ,
                      trailing:Obx(() => Icon(Icons.favorite,
                      color: controller.templs.contains(fruitList[index])? Colors.red : Colors.white),)
                    ),
                  
                );
            }),
        );
    }
}