// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Option {
  final String id;
  final String title;
  final bool answer;
  Option({required this.id, required this.title, required this.answer});

  Option copyWith({String? id, String? title, bool? answer}) {
    return Option(
      id: id ?? this.id,
      title: title ?? this.title,
      answer: answer ?? this.answer,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'title': title, 'answer': answer};
  }

  factory Option.fromMap(Map<String, dynamic> map) {
    return Option(
      id: map['id'] as String,
      title: map['title'] as String,
      answer: map['answer'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Option.fromJson(String source) =>
      Option.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Option(id: $id, title: $title, answer: $answer)';

  @override
  bool operator ==(covariant Option other) {
    if (identical(this, other)) return true;

    return other.id == id && other.title == title && other.answer == answer;
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ answer.hashCode;
}
