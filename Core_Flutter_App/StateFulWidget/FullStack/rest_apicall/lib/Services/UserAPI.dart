
import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:rest_apicall/Model/UserDOB.dart';
import 'package:rest_apicall/Model/UserLocation.dart';

import '../Model/User.dart';
import '../Model/UserName.dart';

class UserAPI{

 
   static Future<List<User>> fetchUsers()async{
    print("Fetch Users called");
    // const url = "https://randomuser.me/api/?results=100";
    const url = "http://127.0.0.1:8080/api/user/allUsers";
    final uri = Uri.parse(url);
    final response =  await http.get(uri);

    final body = response.body;

    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;

    final transformed = results.map((user){

        final name = UserName.fromMap(user['name']);
        final dob = UserDOB.fromMap(user['dob']);
        final location = UserLocation.fromMap(user['location']);

      return User(
        cell: user['cell'],
        gender: user['gender'],
        email: user['email'],
        phone: user['phone'],
        nat: user['nat'],
        name: name,
        dob: dob,
        location: location
      );
    },).toList();

    return transformed;

  }
  
}