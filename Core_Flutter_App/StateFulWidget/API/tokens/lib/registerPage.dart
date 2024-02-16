import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tokens/config.dart';
import 'package:tokens/getData.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration>createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  late final SharedPreferences prefs;

  @override
  void initState() {
    
    super.initState();

    initSharedPref();
  }

  initSharedPref()async{
    prefs = await SharedPreferences.getInstance();
  }

  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode focusNode = FocusNode();
  bool _isNotValidate = false;

  void registerUser() async{
    if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){

      var regBody = {
        "email":emailController.text,
        "password":passwordController.text
      };

      var response = await http.post(Uri.parse(login),
      headers: {"Content-Type":"application/json"},
      body: jsonEncode(regBody)
      );

      var jsonResponse = jsonDecode(response.body);

      if(jsonResponse['status']){
          prefs.clear();
          prefs.setString("token", jsonResponse['token']);
          print(prefs.get("token"));
          print("statusS: $jsonResponse['status']");
          Navigator.push(context, MaterialPageRoute(builder:(context)=>UserData()));

      }else{
        print("SomeThing Went Wrong");
      }
    }else{
      setState(() {
        _isNotValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Register User"),
        ),
        body: Column(
            children: [
                const SizedBox(
                    height: 20,
                ),

                const Text("Register User"),

                TextField(
                    controller: emailController,
                    focusNode: focusNode,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Enter the Name",
                        hintText: "Name here",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                    ),

                    onSubmitted: (value) {
                      registerUser();
                    },
                    
                ),
                TextField(
                    controller: passwordController,
                    focusNode: focusNode,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Enter the password",
                        hintText: "Name here",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                    ),

                    onSubmitted: (value) {
                      registerUser();
                    },
                    
                ),

            ],
        ),
    );
  }

  
}
