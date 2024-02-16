

import 'package:flutter/material.dart';

class PlayersList extends StatefulWidget{

    const PlayersList({super.key});

    @override
    State createState()=>_PlayerListState();
}

class _PlayerListState extends State{

    List<Map<String,dynamic>>playerData = [
        {
            "name":"T20 Players",
            "images":[
                 "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png",
                "https://static-files.cricket-australia.pulselive.com/headshots/288/10933-camedia.png",
                "https://img.latestgkgs.com/2018/05/24/-1527122904.jpg"
            ],
        },
        {
            "name":"Test Players",
            "images":[
             "https://static-files.cricket-australia.pulselive.com/headshots/288/1075-camedia.png",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSewQKA7Z3LRPCGRJSGzoW-hFW45ZQSCsoFxz66HCYI1ITmYbue0oQdISYxk8lsUvgkjSQ&usqp=CAU",
            "https://e0.365dm.com/22/12/2048x1152/skysports-kane-williamson-cricket_5996798.jpg?20221214213452",
            ],
        },
        {
            "name":"One Day Players",
            "images":[
                 "https://cdn-wp.thesportsrush.com/2017/11/02msdhoni-1493219373-800.jpg?w=3840&q=60",
            "https://akm-img-a-in.tosshub.com/indiatoday/images/story/201912/AP19356498890199_0.jpeg?size=690:388",
            "https://upload.wikimedia.org/wikipedia/commons/2/25/Sachin_Tendulkar_at_MRF_Promotion_Event.jpg",
            ],
        },
    ];

    List<List<String>>playerList = [

        [
            "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png",
            "https://static-files.cricket-australia.pulselive.com/headshots/288/10933-camedia.png",
            "https://img.latestgkgs.com/2018/05/24/-1527122904.jpg",
        ],
        [
            "https://static-files.cricket-australia.pulselive.com/headshots/288/1075-camedia.png",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSewQKA7Z3LRPCGRJSGzoW-hFW45ZQSCsoFxz66HCYI1ITmYbue0oQdISYxk8lsUvgkjSQ&usqp=CAU",
            "https://e0.365dm.com/22/12/2048x1152/skysports-kane-williamson-cricket_5996798.jpg?20221214213452",
        ],
        [
            "https://cdn-wp.thesportsrush.com/2017/11/02msdhoni-1493219373-800.jpg?w=3840&q=60",
            "https://akm-img-a-in.tosshub.com/indiatoday/images/story/201912/AP19356498890199_0.jpeg?size=690:388",
            "https://upload.wikimedia.org/wikipedia/commons/2/25/Sachin_Tendulkar_at_MRF_Promotion_Event.jpg",
        ],
    ];

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                centerTitle:  true,
                title: const Text("Players Data"),
            ),

            body: ListView.separated(
                separatorBuilder: (BuildContext context, index){
                    return  const Center(
                        child: Text("---------------------------------------------------------------"));
                },
                itemCount: playerData.length,
                itemBuilder: (BuildContext context,index1){
                    return Column(
                      children:[ 
                        Text(playerData[index1]['name']),
                        const SizedBox(height: 10,),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: playerData[index1]['images'].length,
                          physics: const ClampingScrollPhysics(),
                          itemBuilder: (BuildContext context,index2){
                          return Container(
                              width: 200,
                              height: 200,
                              margin: const EdgeInsets.all(10),
                              child: Image.network(playerData[index1]["images"][index2]),
                          );
                      }),
                      ]
                    );
                },
            ) 
        );
    }
}