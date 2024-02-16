

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/Service/Config.dart';
import 'package:http/http.dart' as http;
import 'package:quizapp/pages/loginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterService{


    static void registerUser({required TextEditingController firstNameController,required emailController,required passwordController,required SharedPreferences prefs}) async{
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
            prefs.clear();
            prefs.setString("token", jsonResponse['token']);
        
        }else{
            print("SomeThing Went Wrong");
        }
        }
    }
}
