

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mvc/data/app_exceptions.dart';
import 'package:mvc/data/networks/BaseAPIServices.dart';
import 'package:http/http.dart' as http;

class NetworkAPIServices extends BaseAPIService{
  
    @override
    Future getAPI(String URL)async {
        
        dynamic jsonResponse;

        try {

            final response = await http.get(Uri.parse(URL)).timeout(const Duration(seconds: 10));

            jsonResponse = returnResponse(response);


          
        }on SocketException{
            throw InternetException(message: "Internet Exception");
        }on TimeoutException{
            throw RequestTimeOutException(message: "Request Time Out");
        }

        return jsonResponse;
    }

    @override
    Future postAPI(var data,String URL)async {
        
        dynamic jsonResponse;

        try {

            final response = await http.post(Uri.parse(URL),
            body: jsonEncode(data)).timeout(const Duration(seconds: 10));

            jsonResponse = returnResponse(response);
  
        }on SocketException{
            throw InternetException(message: "Internet Exception");
        }on TimeoutException{
            throw RequestTimeOutException(message: "Request Time Out");
        }

        return jsonResponse;
    }

    dynamic returnResponse(http.Response response){

        switch (response.statusCode) {

            case 200:
                dynamic jsonResponse = jsonDecode(response.body);
                return jsonResponse;
                
            case 400:
                throw InvalidURLException(message: "Invalid URL");
            
            default:
                throw FetchDataException(message: "Error while communication ${response.statusCode}");
        }
    }    
}