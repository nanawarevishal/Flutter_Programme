

import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quizapp/HomePage.dart';
import 'package:quizapp/Quiz.dart';
import 'package:quizapp/Service/Config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginService{

    static void LoginServiceAPI({required TextEditingController emailController,required TextEditingController passwordController,required SharedPreferences prefs})async{

        if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){

            var loginBody ={
                "email":emailController.text,
                "password":passwordController.text
            };

            var response = await http.post(Uri.parse(login),
            headers: {"Content-Type":"application/json"},
            body: jsonEncode(loginBody)
            );

            var jsonResponse = jsonDecode(response.body);

            if(jsonResponse['status'] == true){
                prefs.setString("token",jsonResponse['token']);
                Get.to(()=>const HomePage());
               
                Get.snackbar(
                    "Login Successfull....!",
                    "Solve the Quiz..!",
                    backgroundColor: Colors.greenAccent
                );
            }

            else if(jsonResponse['status'] == 500){
                Get.snackbar("Invalid email","Please enter the valid data",
                backgroundColor: Colors.redAccent);
            }
            else if(jsonResponse['status'] == 403){
                Get.snackbar("Invalid password","Please enter the valid data",
                backgroundColor: Colors.redAccent);
            }
            else{
                print(jsonResponse);
            }

        }
        else{
            
        }
    }
}