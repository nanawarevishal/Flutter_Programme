

import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:fronend/Model/Employee.dart';

class RegisterEmployee extends StatefulWidget{
  const RegisterEmployee({super.key});

  @override
  State<StatefulWidget> createState() {
    return RegisterEmployeeState();
  }

}

Future<EmployeeModel> registerEmployees(
  String firstName, String lastName, BuildContext context) async {
  var url = "http://localhost:8080/addemployee";
  var response = await http.post(
    url as Uri,
    headers: <String, String>{"Content-Type": "application/json"},
    body: jsonEncode({
      "firstName": firstName,
      "lastName": lastName,
    }),
  );

  String responseString = response.body;
  if (response.statusCode == 200) {
    // Parse the response and create an instance of EmployeeModel
    EmployeeModel employee = EmployeeModel.fromJson(json.decode(responseString));

    // Show the dialog (consider handling UI-related operations outside this function)
    // ignore: use_build_context_synchronously
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext dialogContext) {
        return MyAlertDialog(
          title: 'Backend Response',
          content: response.body,
        );
      },
    );

    // Return the created EmployeeModel
    return employee;
  } else {
    // Handle error cases or return null or a different value as needed
    throw Exception('Failed to register employee');
  }
}

class RegisterEmployeeState extends State<RegisterEmployee>{
  final minimumPadding = 5.0;

  TextEditingController firstController = TextEditingController();
  TextEditingController lastController = TextEditingController();

  late EmployeeModel employee;

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.displayLarge;
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Employee"),
      ),
      body: Form(
        child: Padding(
          padding: EdgeInsets.all(minimumPadding * 2),
          child: ListView(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(
                      top: minimumPadding, bottom: minimumPadding),
                  child: TextFormField(
                    style: textStyle,
                    controller: firstController,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'please enter your name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'First Name',
                        hintText: 'Enter Your First Name',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: minimumPadding, bottom: minimumPadding),
                  child: TextFormField(
                    style: textStyle,
                    controller: lastController,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'please enter your name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Last Name',
                        hintText: 'Enter Your First Name',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),
              ElevatedButton(
                  child: Text('Submit'),
                  onPressed: () async {
                    String firstName = firstController.text;
                    String lastName = lastController.text;
                    EmployeeModel employees =
                        await registerEmployees(firstName, lastName, context);
                    firstController.text = '';
                    lastController.text = '';
                    setState(() {
                      employee = employees;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }

}


class MyAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final List<Widget> actions;

  MyAlertDialog({
    required this.title,
    required this.content,
    this.actions = const [],
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        this.title,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      actions: this.actions,
      content: Text(
        this.content,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}