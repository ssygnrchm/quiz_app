// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:quiz_app/data/datasource/local/option_memory_datasource.dart';
import 'package:quiz_app/data/datasource/local/question_memory_datasource.dart';
import 'package:quiz_app/data/model/question_model.dart';
import 'package:quiz_app/domain/entities/option.dart';
import 'package:quiz_app/domain/repositories/question_option_repository.dart';

class QuestionOptionsRepositoryImpl implements QuestionOptionRepository {
  QuestionMemoryDatasource questionDatasource;
  OptionMemoryDatasource optionMemoryDatasource;
  QuestionOptionsRepositoryImpl({
    required this.questionDatasource,
    required this.optionMemoryDatasource,
  });

  @override
  List<Option> getOption(String id) {
    // TODO: implement getOption
    return optionMemoryDatasource.getOption(id);
  }

  @override
  QuestionModel? getQuestionById(String id) {
    // TODO: implement getQuestionById
    return questionDatasource.getQuestionById(id);
  }
}
