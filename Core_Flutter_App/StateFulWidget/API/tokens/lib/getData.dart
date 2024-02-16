

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:tokens/config.dart';

import 'Model/UserModel.dart';

class UserData extends StatefulWidget{

    @override
    State createState()=>_UserDataState();
}
class _UserDataState extends State {
  late SharedPreferences prefs;
  List<User> users = [];
  bool _prefsInitialized = false;

  @override
  void initState() {
    super.initState();
    initSharedPref();
  }

  Future<void> initSharedPref() async {
    try {
      prefs = await SharedPreferences.getInstance();
      setState(() {
        _prefsInitialized = true;
      });
    } catch (e) {
      print("Error initializing SharedPreferences: $e");
    }
  }

  Future<List<User>> getUserData() async {
    if (!_prefsInitialized) {
      // Return an empty list if prefs are not initialized yet
      return [];
    }

    final response = await http.get(
      Uri.parse(allUser),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${prefs.get('token')}',
      },
    );

    if (response.statusCode == 200) {
      var apiData = jsonDecode(response.body);
      for (Map<String, dynamic> index in apiData) {
        users.add(User.fromJson(index));
      }
    } else {
      print("Failed to fetch user data. Status code: ${response.statusCode}");
    }

    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Data"),
      ),
      body: _prefsInitialized
          ? FutureBuilder(
              future: getUserData(),
              builder: (context, AsyncSnapshot<List<User>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Text(snapshot.data![index].email),
                      );
                    },
                  );
                }
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
