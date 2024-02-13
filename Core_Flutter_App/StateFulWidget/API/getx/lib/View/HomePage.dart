

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/ProductController.dart';
import 'package:getx/View/ProductTile.dart';

class HomePage extends StatefulWidget{
    const HomePage({super.key});

    State<HomePage>createState()=>_HomePageState();
}

class _HomePageState extends State<HomePage>{

    final ProductController productController = Get.put(ProductController());

    Widget build(BuildContext context){
        return Scaffold(
            body: Column(
                children: [
                    Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                            children: [
                                const Expanded(
                                    child: Text("ShopX",
                                        style: TextStyle(
                                            fontFamily: 'avenir',
                                            fontSize: 32,
                                            fontWeight: FontWeight.w900
                                        ),
                                    )
                                ),

                                IconButton(
                                    onPressed: (){}, 
                                    icon:const Icon(Icons.view_list_rounded)
                                ),
                                IconButton(
                                    onPressed: (){}, 
                                    icon:const Icon(Icons.grid_view)
                                )
                            ],
                        ),
                    ),

                    Expanded(
                      
                      child: Obx(()=>  StaggeredGridView.countBuilder(
                                crossAxisCount: 2, 
                                itemCount: productController.productList.length,
                                mainAxisSpacing: 16,
                                crossAxisSpacing: 16,
                                itemBuilder: (context,index){
                                    return ProductTile(productController.productList[index]);
                                    
                                }, 
                                staggeredTileBuilder: (index)=> const StaggeredTile.fit(1))
                    )
                    )        

                ],
            ),
        );
    }
}