import 'package:sqflite_project/data/model/monster.dart';

abstract class MonsterRepository{
  Future<void> insertMonster(Monster monster,String tableName);
  Future<List<Monster>> getMonsters();
  Future<void> updateMonster(Monster monster);
  Future<void> deleteMonster(String id);
}