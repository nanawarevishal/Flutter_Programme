import 'dart:convert';

import 'package:apitutorial/Model/QuizModel.dart';
import 'package:apitutorial/Model/User_data.dart';
import 'package:flutter/foundation.dart';
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

    List<User>users = [];
    List<QuizModel>ls = [];

    Future<List<User>> getUserAPI()async{

        final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

        if(response.statusCode == 200){
            var data = jsonDecode(response.body.toString());

            for(Map<String,dynamic> i in data){
                users.add(User.fromJson(i));
            }
            return users;

        }else{
            return users;
        }
    }

    Future<List<QuizModel>> fetchQuiz()async{
        print("Fetch Quiz called");
        var response = await http.get(Uri.parse("http://192.168.163.22:8080/quiz/all-quizQue/1"));
        
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
                        print(snapshot);
                      if(snapshot.hasData){
                          return ListView.builder(
                              itemCount: ls.length,
                              itemBuilder: (context,index){
                                  return Card(
                                    child:Padding(
                                        padding: const EdgeInsets.all(10),
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                              Text(index.toString())
                                          ],
                                      ),
                                    ) ,
                                  );
                              },
                          );
                  
                      }else{
                          return const CircularProgressIndicator();
                      }
                  }),
                )
            ],
        ),
        );
    }
}
