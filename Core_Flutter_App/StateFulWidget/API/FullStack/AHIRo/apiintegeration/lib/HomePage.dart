

import 'dart:convert';

import 'package:apiintegeration/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage>{

    List<User>users = [];
    int? _counter = 0;
    int _width = 200;

    @override
    Widget build(BuildContext context){
        return FutureBuilder(
            future: getData(),
            
          builder: (context,snapshot){
            
            if(snapshot.hasData){
                
                return ListView.builder(
                    
                    itemCount: users.length,
                    itemBuilder: (context, index) =>
                    Container(
                        margin: const EdgeInsetsDirectional.all(10),
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                        height: 126,
                        
                        // color: Colors.greenAccent,
                        child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            
                            Container(
                                color: Colors.greenAccent,
                                height: 200,
                                width: 200,
                                child: Text(
                                    "User IDs: ${users[index].userId}\n"
                                    "ID:${users[index].id}\n"
                                    "Title: ${users[index].title}\n",
                                    
                                    style: const TextStyle(fontSize: 18),
                                ), 
                            ),
                            Container(
                                color: Colors.greenAccent,
                                height: 200,
                                width: 200,
                                child: Text(
                                    "User IDs: ${users[index].userId}\n"
                                    "ID:${users[index].id}\n"
                                    "Title: ${users[index].title}\n",
                                    
                                    style: const TextStyle(fontSize: 18),
                                ), 
                            ),
                            Container(
                                color: Colors.greenAccent,
                                height: 200,
                                width: 200,
                                child: Text(
                                    "User IDs: ${users[index].userId}\n"
                                    "ID:${users[index].id}\n"
                                    "Title: ${users[index].title}\n"
                                    "Body:${users[index].body}",
                                    style: const TextStyle(fontSize: 18),
                                ), 
                            ),
                            Container(
                                color: Colors.greenAccent,
                                height: 200,
                                width: 200,
                                child: Text(
                                    "User IDs: ${users[index].userId}\n"
                                    "ID:${users[index].id}\n"
                                    "Title: ${users[index].title}\n",
                                    
                                    style: const TextStyle(fontSize: 18),
                                ), 
                            ),
                          ],
                        ),
                    ),
                
                );

            }
            else{
                return const CircularProgressIndicator();
            }
          }
        );
    }

    Future<List<User>> getData()async{

        final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

        var apiData = jsonDecode(response.body.toString());

        if(response.statusCode == 200){

            for(Map<String,dynamic> index in apiData){
                users.add(User.fromJson(index));
            }

            return users;
        }
        else{
            return users;
        }
        
    }       
}

