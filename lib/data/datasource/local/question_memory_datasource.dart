import 'package:quiz_app/data/model/question_model.dart';

class QuestionMemoryDatasource {
  final List<QuestionModel> _listQuestion = [
    QuestionModel(id: '1', title: 'Question 1'),
    QuestionModel(id: '2', title: 'Question 2'),
    QuestionModel(id: '3', title: 'Question 3'),
    QuestionModel(id: '4', title: 'Question 4'),
    QuestionModel(id: '5', title: 'Question 5'),
    QuestionModel(id: '6', title: 'Question 6'),
    QuestionModel(id: '7', title: 'Question 7'),
    QuestionModel(id: '8', title: 'Question 8'),
    QuestionModel(id: '9', title: 'Question 9'),
    QuestionModel(id: '10', title: 'Question 10'),
  ];

  QuestionModel? getQuestionById(String id) {
    try {
      return _listQuestion.firstWhere((question) => question.id == id);
    } catch (e) {
      return null;
    }
  }
}
