
// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    int id;
    String firstName;
    String lastName;
    String email;
    String password;
    int score;

    User({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.password,
        required this.score,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        password: json["password"],
        score: json["score"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "password": password,
        "score": score,
    };
}
