


import 'dart:convert';
import 'package:complexapi/Model/Photos.dart';
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

    List<Photos>photos = [];

    Future<List<Photos>> getUserAPI()async{

        final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));

        if(response.statusCode == 200){
            var data = jsonDecode(response.body.toString());

            for(Map<String,dynamic> i in data){
                photos.add(Photos.fromJson(i));
            }
            return photos;

        }else{
            return photos;
        }
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
                  child: FutureBuilder(future: getUserAPI(), 
                  builder: (context,AsyncSnapshot<List<Photos>> snapshot){
                      if(snapshot.hasData){
                          return ListView.builder(
                              itemCount: photos.length,
                              itemBuilder: (context,index){
                                  return Card(
                                    child:Padding(
                                        padding:const  EdgeInsets.all(10),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children:[ 
                                        
                                              Image.network(snapshot.data![index].thumbnailUrl),
                                              const SizedBox(
                                                  width: 20,
                                              ),
                                              Column(
                                              // mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                    Text("ID: ${snapshot.data![index].id.toString()}"),
                                                    Text("Title : ${photos[index].title.toString()}"),
                                                    
                                                  ],
                                              ),
                                          ]
                                        ),
                                      ),
                                    ) ,
                                  );
                              },
                          );
                  
                      }else{
                          return const Text("Loading...!");
                      }
                  }),
                )
            ],
        ),
        );
    }
}
