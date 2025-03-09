// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:quiz_app/domain/entities/option.dart';

import 'package:quiz_app/domain/repositories/question_option_repository.dart';

class QuestionOptionProvider extends ChangeNotifier {
  QuestionOptionRepository repository;

  String _currentId = '1';
  late String _question;
  List<Option> _options = [];
  // QuestionModel? _question = repository.getQuestionById(_currentId);

  QuestionOptionProvider(this.repository) {
    loadQuestion(_currentId);
    loadOptions(_currentId);
  }

  String get currentId => _currentId;

  String get question => _question;

  List<Option> get options => _options;

  void setRepository(QuestionOptionRepository newRepository) {}

  void loadQuestion(String id) {
    _question = repository.getQuestionById(id)!.title.toString();
    notifyListeners();
  }

  void loadOptions(String id) {
    _options = repository.getOption(id);
    notifyListeners();
  }
}
