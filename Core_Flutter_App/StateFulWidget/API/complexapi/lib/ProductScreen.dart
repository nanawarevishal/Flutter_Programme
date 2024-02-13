
import 'dart:convert';

import 'package:complexapi/Model/ProductModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class ProductScreen extends StatefulWidget{
   
   const ProductScreen({super.key});
    
    @override
    State<ProductScreen> createState()=>_ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen>{

    List<ProductModel>products = [];
    Future <List<ProductModel>> getProductAPI()async{

        final apiData = await http.get(Uri.parse("https://webhook.site/01332257-65af-4bab-a6be-b1a82d7fcd57"));

        var data = jsonDecode(apiData.body.toString());

        if(apiData.statusCode == 200){
            
            for(Map<String,dynamic> i in data){
                products.add(ProductModel.fromJson(i));
            }

           
        }

        return products;      
    }

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Column(
                children: [
                    Expanded(
                        child:FutureBuilder(
                        future: getProductAPI(), 
                        builder: (context,AsyncSnapshot<List<ProductModel>>snapshot){
                        print(snapshot);  
                        if(snapshot.hasData){
                    
                            return ListView.builder(
                                itemCount: snapshot.data!.length ,
                                itemBuilder: (context,index){
                                
                                return Column(
                                    children: [
                                        Text(index.toString())
                                    ],
                                );
                            });
                        }else{
                            return const Text("Loading..!");
                        }
                    }))
                ],
            ),
        );
          
    }
}
