

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/Service/Config.dart';
import 'package:http/http.dart' as http;

class RegisterService{


    static void registerUser({required TextEditingController firstNameController,required emailController,required passwordController}) async{
        if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty && firstNameController.text.isNotEmpty){

        var regBody = {
            "firstName":firstNameController.text,
            "email":emailController.text,
            "password":passwordController.text
        };

        var response = await http.post(Uri.parse(register),
        headers: {"Content-Type":"application/json"},
        body: jsonEncode(regBody)
        );

        var jsonResponse = jsonDecode(response.body);

        if(jsonResponse['status'] == true){
            return;
        
        }else{
            print("SomeThing Went Wrong");
        }
        }
    }
}
