import 'package:quiz_app/data/model/question_model.dart';
import 'package:quiz_app/domain/entities/option.dart';

abstract class QuestionOptionRepository {
  List<Option> getOption(String id);
  QuestionModel? getQuestionById(String id);
}
