
import 'package:flutter/material.dart';

class Favourite extends StatefulWidget{

    @override
    State createState()=>_FavouriteState();
    
}

class _FavouriteState extends State{

    List<String>fruitList = ["Orange","Apple","Mango","Banana","Guava","Cherry"];

    List<String>templs = [];

    Widget build(BuildContext context){
        return Scaffold(
            body: ListView.builder(
                itemCount: fruitList.length,
                itemBuilder: (context,index){
                return  Card(
                  child: ListTile(
                    onTap:(){
                        setState(() {
                            if(!templs.contains(fruitList[index])) {
                              templs.add(fruitList[index]);
                            } else{
                                templs.remove(fruitList[index]);
                            }
                        });
                    } ,
                      title: Text(fruitList[index]),
                      trailing:  Icon(Icons.favorite,
                      color:templs.contains(fruitList[index])? Colors.red: Colors.white,),
                  ),
                );
            }),
        );
    }
}