import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/Service/RegisterService.dart';
import 'package:quizapp/components/backGround.dart';
import 'package:quizapp/pages/loginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';


class RegisterPage extends StatefulWidget{
    const RegisterPage({super.key});

    State createState()=>_RegisterPageState();
}

class _RegisterPageState extends State {

  final TextEditingController firstNameController = TextEditingController();
  // TextEditingController _lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

   late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    initSharedRefernces();
  }

  void initSharedRefernces()async{
      prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BackGround(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Register'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 10),
               TextField(
                controller: firstNameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 10),
               TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 10),
               TextField(
                controller: passwordController,
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Container(
                alignment: Alignment.center,
                height: 50.0,
                width: size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80.0),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 255, 136, 34),
                      Color.fromARGB(255, 255, 177, 41)
                    ],
                  ),
                ),
                child: GestureDetector(
                  onTap: (){
                    RegisterService.registerUser(
                        firstNameController: firstNameController,
                        emailController: emailController,
                        passwordController: passwordController,
                        );

                        firstNameController.clear();
                        emailController.clear();
                        passwordController.clear();

                        Get.snackbar(
                          "Register Successfull....!",
                          "You may proceed now..!",
                          backgroundColor: Colors.greenAccent
                        );

                      Get.to(()=>const LoginPage());
                  },
                  child: const Text('SIGN UP',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '''Already have an account?''',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    
                    onTap: () {
                      Get.to(()=>const LoginPage());
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
