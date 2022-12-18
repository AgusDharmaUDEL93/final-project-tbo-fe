// To parse this JSON data, do
//
//     final words = wordsFromJson(jsonString);

import 'dart:convert';

Words wordsFromJson(String str) => Words.fromJson(json.decode(str));

String wordsToJson(Words data) => json.encode(data.toJson());

class Words {
    Words({
        this.message,
        this.result,
        this.status,
    });

    String? message;
    bool? result;
    int? status;

    factory Words.fromJson(Map<String, dynamic> json) => Words(
        message: json["message"],
        result: json["result"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "result": result,
        "status": status,
    };
}
