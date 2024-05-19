import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MonsterDatabase {
  static Database? _database;
  static Future<Database> getInstance() async {
    _database ??= await openDatabase(
        join(await getDatabasesPath(), "monster.db"),
        onCreate: (db, version) => db.execute(
            "CREATE TABLE monster(id TEXT PRIMARY KEY, name TEXT, power TEXT)"),
        version: 1,
        singleInstance: true);
    return _database!;
  }
}
