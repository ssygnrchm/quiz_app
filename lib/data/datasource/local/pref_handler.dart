import 'package:shared_preferences/shared_preferences.dart';

class PrefHandler {
  static const String _id = 'idUser';
  static const String _isNew = 'isNew';

  static void saveId(String id) {
    SharedPreferences.getInstance().then((prefs) {
      prefs.setString(_id, id);
    });
  }

  static Future getId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String id = prefs.getString(_id) ?? '';
    return id;
  }

  static void removeId() {
    SharedPreferences.getInstance().then((prefs) {
      prefs.remove(_id);
    });
  }

  static void saveStatus(bool isNew) {
    SharedPreferences.getInstance().then((prefs) {
      prefs.setBool(_isNew, isNew);
    });
  }

  static Future getStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isNew = prefs.getBool(_isNew) ?? false;
    return isNew;
  }

  static void removeStatus() {
    SharedPreferences.getInstance().then((prefs) {
      prefs.remove(_isNew);
    });
  }
}
