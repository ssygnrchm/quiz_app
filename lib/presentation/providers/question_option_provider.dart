// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:quiz_app/domain/repositories/question_option_repository.dart';

class QuestionOptionProvider extends ChangeNotifier {
  QuestionOptionRepository repository;

  String _currentId = '1';
  // QuestionModel? _question = repository.getQuestionById(_currentId);

  QuestionOptionProvider(this.repository) {
    loadQuestion(_currentId);
    // loadOptions(_currentId);
  }

  String get currentId => _currentId;

  void loadQuestion(String id) {
    // _question = repository.getQuestionById(id);
  }
}
