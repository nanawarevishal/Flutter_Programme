import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rest_apicall/Model/User.dart';
import 'package:rest_apicall/Services/UserAPI.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    // fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("REST API Call"),
    //   ),

    //   // floatingActionButton: FloatingActionButton(
    //   //     onPressed: fetchUsers,
    //   //     child: const Icon(Icons.add),),
    //   body: ListView.builder(
    //     itemCount: users.length,
    //     itemBuilder: (context, index) {
    //       final user = users[index];
    //       final color = user.gender == 'male' ? Colors.red : Colors.blue;
    //       return ListTile(
    //         title: Text(user.name.first),
    //         subtitle: Text(user.dob.date.toString()),
    //         titleTextStyle: TextStyle(color: color),
    //       );
    //     },
    //   ),
    // );
    return MaterialApp(
      home: Scaffold(
          body: 
      SingleChildScrollView(
        child: Column(children: [

         ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: userdata.length,
              itemBuilder: (context,i){
                final user = userdata[i];
                print(user);
                return Card(
          
                  child: SizedBox(
                    height: 200,

                    // color: const Color.fromARGB(255, 215, 214, 214),
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 210, 209, 209)
                          ),
                        ),
                        // Text(userdata[i]["id"]!.toString()),
                        Text(userdata[i]["title"]!),
                        Text(userdata[i]['firstName']),
                        Text(userdata[i]['lastName']),
                        Text(userdata[i]['email']),

                      ],
                    ),
                  ),
                );
                // return Container();
        
              }),
         
      
              ElevatedButton(
                onPressed:(){
                  getdatas();
                } ,
                child: const Text("get data")),
          ]),
      ),
     ),
    );
  }

  void fetchUsers() async {
    final response = await UserAPI.fetchUsers();
    setState(() {
      users = response;
    });
  }

  var userdata = [];
  getdatas() async {
    print("getdatas called");
    const  url = "http://127.0.0.1:8080/allUsers";
    
    
    final uri = Uri.parse(url);
    
    final apidata =  await http.get(uri);
    print(apidata);
    var getdat = jsonDecode(apidata.body);
    var user = [];
    setState(() {
      userdata = [];
    });

    for (var a = 0; a < getdat.length; a++) {
      var obj = {
        "id": getdat[a]['id'],
        "title": getdat[a]['name']['title'],
        "firstName": getdat[a]['name']['firstName'],
        "lastName": getdat[a]['name']['lastName'],
        'email':getdat[a]['email'],
        "picture":getdat[a]['picture']['small']
        // 'city':getdat[a]['location']['city']
      };
      userdata.add(obj);
    }

    print(userdata);
  }
}
