
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quizapp/Service/Config.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Models/SingleUserModel.dart';

class HomePageService {

    
    static Future<dynamic> getUserData({required bool prefsInitialized,required SharedPreferences prefs}) async {
    // if (!prefsInitialized) {
    //     print("not ini");
    //   // Return an empty list if prefs are not initialized yet
    //   return ;
    // }

    final response = await http.get(
      Uri.parse(getUser),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${prefs.get('token')}',
      },
    );

    if (response.statusCode == 200) {
        var apiData = jsonDecode(response.body);

        return User.fromJson(apiData);

    } else {
      print("Failed to fetch user data. Status code: ${response.statusCode}");
    }


    }
}