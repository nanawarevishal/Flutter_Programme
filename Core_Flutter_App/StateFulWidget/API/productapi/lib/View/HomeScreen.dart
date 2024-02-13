

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:productapi/Model/ProductModel.dart';
import 'package:http/http.dart' as http;
import 'package:productapi/Model/Quiz.dart';

class HomeScreen extends StatefulWidget{

    State createState()=>_HomeScreenState();
}

class _HomeScreenState extends State{

    List<ProductElement>products = [];
    List<Quiz>quiz = [];

    Future<List<ProductElement>> getProduct()async{

        try{

            var response = await http.get(Uri.parse("https://dummyjson.com/products"));
            
            var jsonData = jsonDecode(response.body.toString());

            dynamic data = jsonData['products'];

            for(Map<String,dynamic> index in data){
                products.add(ProductElement.fromJson(index));
            }
            return products;
        }catch(Exception){
            throw Exception;
        }

    }

    Future<List<Quiz>> fetchQuiz()async{
        print("fetquiz called");
        var response = await http.get(Uri.parse("http://192.168.0.105:8080/quiz/all-quizQue/1"));
        
        var jsonData = jsonDecode(response.body.toString());
        print(jsonData);
        for(Map<String,dynamic> index in jsonData){
            quiz.add(Quiz.fromJson(index));
        }

        return quiz;

    }

    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: const Text("Product API Integeration"),
            ),

            body: Column(
                children: [
                    Expanded(
                        child: FutureBuilder(future: fetchQuiz(), builder: (context,AsyncSnapshot snapshot){
                        print(snapshot);
                        if(snapshot.hasData){
                            
                            return ListView.builder(
                                
                                itemCount:quiz.length,
                                itemBuilder: (context,index){
                                    return Row(
                                        children: [
                                           Text(quiz[index].content)
                                        ],
                                    );
                            });
                        }
                        else{
                            return const CircularProgressIndicator(
                                color: Colors.yellow,
                                
                            );
                        }
                    }))
                ],
            ),
        );
    }
}