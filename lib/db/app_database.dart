import 'package:sqflite/sqflite.dart';

class AppDatabase {
  AppDatabase._();

  static final AppDatabase instance = AppDatabase._();

  Database? db;

  Future<Database> getDb() async {
    if (db != null) {
      return db!;
    } else {
      db = await _initDb();
      return db!;
    }
  }

  Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    final path = '$dbPath/text_lite.db';
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE AppConfig(userId TEXT PRIMARY KEY, username TEXT, email TEXT, idToken TEXT, refreshToken TEXT, isLoggedIn INTEGER)');

    await db.execute(
        'CREATE TABLE Friends (userId TEXT PRIMARY KEY, username TEXT, email TEXT, connectionId TEXT, lastWebsocketUpdate TEXT)');

    await db.execute(
        'CREATE TABLE ChatList (chatListId TEXT PRIMARY KEY, recepientId TEXT, recepientUsername TEXT, senderId TEXT, senderUsername TEXT)');

    await db.execute(
        'CREATE TABLE Chats (chatId TEXT PRIMARY KEY, chatListId TEXT, recepientId TEXT, recepientUsername TEXT, senderId TEXT, senderUsername TEXT, mode TEXT, status TEXT, message TEXT, dateCreated TEXT, FOREIGN KEY (chatListId) REFERENCES ChatList (chatListId))');
  }
}
