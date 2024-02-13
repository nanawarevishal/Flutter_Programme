
import 'dart:convert';

class EmployeeModel{

    int id;
    String firstName;
    String lastName;

    EmployeeModel({required this.id,required this.firstName,required this.lastName});

    factory EmployeeModel.fromJson(Map<String,dynamic>json)=>EmployeeModel(
        id: json['id'], 
        firstName: json['firstName'], 
        lastName: json['lastName']);

    Map<String,dynamic>toJson()=>{
        "firstName":firstName,
        "lastName":lastName,
        'id':id
    };

    String get firstname =>firstName;

    String get lastname => lastName;

}

EmployeeModel employeeModelJSon(String str)=>EmployeeModel.fromJson(jsonDecode(str));

String employeeModelToJson(EmployeeModel data)=>jsonEncode(data.toJson());