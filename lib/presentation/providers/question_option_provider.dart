// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:quiz_app/domain/entities/option.dart';

import 'package:quiz_app/domain/repositories/question_option_repository.dart';

class QuestionOptionProvider extends ChangeNotifier {
  QuestionOptionRepository repository;

  String _currentId = '1';
  late String _question;
  List<Option> _options = [];
  int _currentIndex = 0;
  final int _totalQuestions = 10;

  QuestionOptionProvider(this.repository) {
    loadQuestion(_currentId);
    loadOptions(_currentId);
  }

  String get currentId => _currentId;
  String get question => _question;
  List<Option> get options => _options;
  int get currentIndex => _currentIndex;
  int get totalQuestions => _totalQuestions;
  String get progress => "${_currentIndex + 1}/$_totalQuestions";

  void setRepository(QuestionOptionRepository newRepository) {
    repository = newRepository;
    loadQuestion(_currentId);
    loadOptions(_currentId);
  }

  void loadQuestion(String id) {
    _question = repository.getQuestionById(id)!.title.toString();
    notifyListeners();
  }

  void loadOptions(String id) {
    _options = repository.getOption(id);
    notifyListeners();
  }

  bool isNextAvailable() {
    return _currentIndex < _totalQuestions - 1;
  }

  void nextQuestion() {
    if (isNextAvailable()) {
      _currentIndex++;
      _currentId = (_currentIndex + 1).toString();
      loadQuestion(_currentId);
      loadOptions(_currentId);
    }
  }

  void previousQuestion() {
    if (_currentIndex > 0) {
      _currentIndex--;
      _currentId = (_currentIndex + 1).toString();
      loadQuestion(_currentId);
      loadOptions(_currentId);
    }
  }

  // currentid and currentindex, should be the same variable.
}
