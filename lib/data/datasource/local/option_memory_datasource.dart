import 'package:quiz_app/data/model/option_model.dart';

class OptionMemoryDatasource {
  final Map<String, List<OptionModel>> _listOption = {
    '1': [
      OptionModel(id: '1', title: 'option 1', answer: false),
      OptionModel(id: '2', title: 'option 2', answer: true),
      OptionModel(id: '3', title: 'option 3', answer: false),
      OptionModel(id: '4', title: 'option 4', answer: false),
    ],
    '2': [
      OptionModel(id: '5', title: 'option 5', answer: false),
      OptionModel(id: '6', title: 'option 6', answer: false),
      OptionModel(id: '7', title: 'option 7', answer: true),
      OptionModel(id: '8', title: 'option 8', answer: false),
    ],
    '3': [
      OptionModel(id: '9', title: 'option 9', answer: true),
      OptionModel(id: '10', title: 'option 10', answer: false),
      OptionModel(id: '11', title: 'option 11', answer: false),
      OptionModel(id: '12', title: 'option 12', answer: false),
    ],
    '4': [
      OptionModel(id: '13', title: 'option 13', answer: false),
      OptionModel(id: '14', title: 'option 14', answer: false),
      OptionModel(id: '15', title: 'option 15', answer: false),
      OptionModel(id: '16', title: 'option 16', answer: true),
    ],
    '5': [
      OptionModel(id: '17', title: 'option 17', answer: false),
      OptionModel(id: '18', title: 'option 18', answer: true),
      OptionModel(id: '19', title: 'option 19', answer: false),
      OptionModel(id: '20', title: 'option 20', answer: false),
    ],
    '6': [
      OptionModel(id: '21', title: 'option 21', answer: false),
      OptionModel(id: '22', title: 'option 22', answer: false),
      OptionModel(id: '23', title: 'option 23', answer: true),
      OptionModel(id: '24', title: 'option 24', answer: false),
    ],
    '7': [
      OptionModel(id: '25', title: 'option 25', answer: false),
      OptionModel(id: '26', title: 'option 26', answer: true),
      OptionModel(id: '27', title: 'option 27', answer: false),
      OptionModel(id: '28', title: 'option 28', answer: false),
    ],
    '8': [
      OptionModel(id: '29', title: 'option 29', answer: false),
      OptionModel(id: '30', title: 'option 30', answer: false),
      OptionModel(id: '31', title: 'option 31', answer: false),
      OptionModel(id: '32', title: 'option 32', answer: true),
    ],
    '9': [
      OptionModel(id: '33', title: 'option 33', answer: false),
      OptionModel(id: '34', title: 'option 34', answer: true),
      OptionModel(id: '35', title: 'option 35', answer: false),
      OptionModel(id: '36', title: 'option 36', answer: false),
    ],
    '10': [
      OptionModel(id: '37', title: 'option 37', answer: true),
      OptionModel(id: '38', title: 'option 38', answer: false),
      OptionModel(id: '39', title: 'option 39', answer: false),
      OptionModel(id: '40', title: 'option 40', answer: false),
    ],
  };

  List<OptionModel> getOption(String id) {
    return _listOption[id] ?? [];
  }
}
