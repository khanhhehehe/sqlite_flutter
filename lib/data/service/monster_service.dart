import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_project/data/database/mosnter_database.dart';
import 'package:sqflite_project/data/model/monster.dart';

@lazySingleton
class MonsterService {
  Future<void> insertMonster(Monster monster, String tableName) async {
    try {
      Database db = await MonsterDatabase.getInstance();
      await db.insert(tableName, monster.toJson());
    } catch (ex) {
      print(ex);
    }
  }

  Future<List<Monster>> getMonsters() async {
    List<Monster> monsters = [];
    try {
      Database db = await MonsterDatabase.getInstance();
      final List<Map<String, dynamic>> maps = await db.query('monster');
      monsters = maps.map((e) => Monster.fromJson(e)).toList();
    } catch (ex) {
      print(ex);
    }
    return monsters;
  }

  Future<void> updateMonster(Monster monster) async {
    try {
      Database db = await MonsterDatabase.getInstance();
      await db.update('monster', monster.toJson(),
          where: "id = ?", whereArgs: [monster.id]);
    } catch (ex) {
      print(ex);
    }
  }

  Future<void> deleteMonster(String id) async {
    try {
      Database db = await MonsterDatabase.getInstance();
      await db.delete("monster", where: "id = ?", whereArgs: [id]);
    } catch (ex) {
      print(ex);
    }
  }
}
