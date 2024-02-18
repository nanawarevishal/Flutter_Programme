

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quizapp/pages/HomePage.dart';
import 'package:quizapp/Service/Config.dart';
import 'package:quizapp/main.dart';

class LoginService{

    static void LoginServiceAPI({required TextEditingController emailController,required TextEditingController passwordController,})async{

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
                MainApp.storage.remove("token");
                MainApp.storage.write("token", jsonResponse['token']);

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