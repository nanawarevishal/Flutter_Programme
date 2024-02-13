

import 'dart:convert';

import 'package:complexapi/Model/UserModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class UserScreen extends StatefulWidget{
   
   const UserScreen({super.key});
    
    @override
    State<UserScreen> createState()=>_UserScreenState();
}

class _UserScreenState extends State<UserScreen>{

    List<UserModel>users = [];
    Future <List<UserModel>> getUserAPI()async{

        final apiData = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

        if(apiData.statusCode == 200){
            var data = jsonDecode(apiData.body.toString());

            for(Map<String,dynamic> i in data){
                users.add(UserModel.fromJson(i));
            }

            return users;

        }
        return users;
    }

    Widget build(BuildContext context){
        return Scaffold(
            body: Column(
                children: [
                    Expanded(
                        child: FutureBuilder(
                            future: getUserAPI(), 
                            builder:(context,AsyncSnapshot<List<UserModel>>snapshot){
                                if(snapshot.hasData){

                                    return ListView.builder(
                                        itemCount: users.length,
                                        itemBuilder:(context,index){
                                        return Card(
                                            child: Padding(
                                                padding: const EdgeInsets.all(8),
                                              child: Column(
                                                  children: [
                                                      ReusableRow(title: "Name", value: snapshot.data![index].name),
                                                      ReusableRow(title: "UserName", value: snapshot.data![index].username),
                                                      ReusableRow(title: "Email", value: snapshot.data![index].email),
                                                      ReusableRow(title: "Address:", value: 
                                                      "${snapshot.data![index].address.street} ${snapshot.data![index].address.city} ${snapshot.data![index].address.suite} ${snapshot.data![index].address.zipcode}"),
                                                      ReusableRow(title: "Email", value: snapshot.data![index].email),
                                                      ReusableRow(title: "Email", value: snapshot.data![index].email),
                                                  ],
                                              ),
                                            ),
                                        );
                                });
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

class ReusableRow extends StatelessWidget{

    final String title,value;
    const ReusableRow({super.key,required this.title,required this.value});


    Widget build(BuildContext context){
        return Padding(
            padding: EdgeInsets.all(4),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Text(title),
                  Text(value),
              ],
          ),
        );
    }
}