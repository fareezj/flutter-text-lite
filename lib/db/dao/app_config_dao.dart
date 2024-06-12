import 'package:sqflite/sqflite.dart';
import 'package:text_lite/db/app_database.dart';
import 'package:text_lite/models/app_config/app_config_model.dart';

class AppConfigDao {
  final AppDatabase appDatabase;

  AppConfigDao(this.appDatabase);

  Future<void> insertAppConfig(AppConfigModel appConfigModel) async {
    try {
      await appDatabase.db!.insert('AppConfig', appConfigModel.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<AppConfigModel> getAppConfig() async {
    try {
      var result = await appDatabase.db!.rawQuery('SELECT * FROM AppConfig');
      return AppConfigModel(
          userId: result[0]['userId'].toString(),
          username: result[0]['username'].toString(),
          email: result[0]['email'].toString(),
          idToken: result[0]['idToken'].toString(),
          refreshToken: result[0]['refreshToken'].toString(),
          isLoggedIn: int.parse(result[0]['isLoggedIn'].toString()));
    } catch (e) {
      throw Exception(e);
    }
  }
}
