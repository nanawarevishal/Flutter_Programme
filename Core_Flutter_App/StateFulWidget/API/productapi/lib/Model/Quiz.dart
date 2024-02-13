// To parse this JSON data, do
//
//     final quiz = quizFromJson(jsonString);

import 'dart:convert';

List<Quiz> quizFromJson(String str) => List<Quiz>.from(json.decode(str).map((x) => Quiz.fromJson(x)));

String quizToJson(List<Quiz> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Quiz {
    int id;
    String content;
    Map<String, String> answers;
    int correctAnswer;
    dynamic explanation;

    Quiz({
        required this.id,
        required this.content,
        required this.answers,
        required this.correctAnswer,
        required this.explanation,
    });

    factory Quiz.fromJson(Map<String, dynamic> json) => Quiz(
        id: json["id"],
        content: json["content"],
        answers: Map.from(json["answers"]).map((k, v) => MapEntry<String, String>(k, v)),
        correctAnswer: json["correctAnswer"],
        explanation: json["explanation"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "content": content,
        "answers": Map.from(answers).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "correctAnswer": correctAnswer,
        "explanation": explanation,
    };
}
