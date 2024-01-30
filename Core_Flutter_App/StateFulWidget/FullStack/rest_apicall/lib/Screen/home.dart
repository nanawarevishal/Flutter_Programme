

import 'package:flutter/material.dart';
import 'package:rest_apicall/Model/User.dart';
import 'package:rest_apicall/Services/UserAPI.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }

}

class _HomeScreenState extends State<HomeScreen>{

  List<User>users = [];

  @override
  void initState()  {
    super.initState();
    fetchUsers();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
            title: const Text("REST API Call"),
        ),

        // floatingActionButton: FloatingActionButton(
        //     onPressed: fetchUsers,
        //     child: const Icon(Icons.add),),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context,index){
            final user = users[index];
            final color = user.gender == 'male' ? Colors.red : Colors.blue;
            return ListTile(
              
              title: Text(user.name.first),
              subtitle: Text(user.dob.date.toString()),
              
              titleTextStyle:TextStyle(
                color: color
              ),
            );
          },
        ),
        
    );
  }

  void fetchUsers()async{
    final response= await UserAPI.fetchUsers();
    setState(() {
      users = response;
    });
  }
}