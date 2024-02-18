

import 'dart:convert';
import 'package:quizapp/Models/QuizModel.dart';
import 'package:quizapp/Service/Config.dart';
import 'package:quizapp/main.dart';
import 'package:http/http.dart'as http;


class  QuizService {

    static List<QuizModel>quizList = [];

    static Future<List<QuizModel>> getQuestions({required int quizId})async{
        print("Service Called");
        var response =await http.get(Uri.parse("$getQuestionByCat$quizId"),
        headers: {
			'Content-Type': 'application/json',
			'Accept': 'application/json',
			'Authorization': 'Bearer ${MainApp.storage.read("token")}',
		},);
        if(response.statusCode == 200){
            var apiData = jsonDecode(response.body);
            quizList.clear();
            for(Map<String,dynamic> index in apiData){
                quizList.add(QuizModel.fromJson(index));
            }
            return quizList;
        }
        else{
            print("Status Code is: ${response.statusCode}");
        }
        return quizList;
    }

}