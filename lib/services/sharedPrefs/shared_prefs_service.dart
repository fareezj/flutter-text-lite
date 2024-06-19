import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  SharedPrefsService._();

  static final SharedPrefsService instance = SharedPrefsService._();

  SharedPreferences? sp;

  Future<SharedPreferences> initSharedPrefs() async {
    if (sp != null) {
      return sp!;
    }
    sp = await SharedPreferences.getInstance();
    return sp!;
  }
}
