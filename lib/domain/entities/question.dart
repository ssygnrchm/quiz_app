// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Question {
  final String id;
  final String title;
  Question({required this.id, required this.title});

  Question copyWith({String? id, String? title}) {
    return Question(id: id ?? this.id, title: title ?? this.title);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'title': title};
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(id: map['id'] as String, title: map['title'] as String);
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) =>
      Question.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Question(id: $id, title: $title)';

  @override
  bool operator ==(covariant Question other) {
    if (identical(this, other)) return true;

    return other.id == id && other.title == title;
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode;
}
