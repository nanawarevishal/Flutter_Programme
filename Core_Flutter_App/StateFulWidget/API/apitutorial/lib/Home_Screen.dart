import 'dart:convert';

import 'package:apitutorial/Model/QuizModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
    const Home({super.key});

    @override
    State<StatefulWidget> createState() {
        return _HomeState();
    }
}

class _HomeState extends State<Home> {

    Future<List<QuizModel>> fetchQuiz()async{
        List<QuizModel>ls = [];
        var response = await http.get(Uri.parse("http://192.168.0.109:8080/quiz/all-quizQue/1"));
        if(response.statusCode == 200){
            var jsonData = jsonDecode(response.body.toString());
            
            for(Map<String,dynamic> index in jsonData){
                ls.add(QuizModel.fromJson(index));
            }
        }
    
    return ls;
  }


    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text("API Testing"),
        ),
        body: Column(
            children: [
                Expanded(
                  child: FutureBuilder(future: fetchQuiz(), 
                  builder: (context,snapshot){
                      if(snapshot.hasData){
                          return ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context,index){
                                  return Card(
                                    child:Padding(
                                        padding: const EdgeInsets.all(10),
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                                Card(
                                                    child: Column(
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                             Text(snapshot.data![index].content),
                                                             Text(snapshot.data![index].answers["1"].toString())
                                                        ],
                                                    ),
                                                )
                                             
                                          ],
                                      ),
                                    ) ,
                                  );
                              },
                          );
                  
                      }else{
                          return const Center(
                            child:  Row(
                              children: [
                                  CircularProgressIndicator()
                              ],
                            ),
                          );
                      }
                  }),
                )
            ],
        ),
        );
    }
}
