import 'package:injectable/injectable.dart';
import 'package:sqflite_project/common/configs/locators.dart';
import 'package:sqflite_project/data/model/monster.dart';
import 'package:sqflite_project/data/repositories/monster.repository.dart';
import 'package:sqflite_project/data/service/monster_service.dart';

@LazySingleton(as: MonsterRepository)
class MonsterRepositoryImp extends MonsterRepository {
  final MonsterService _monsterService;
  MonsterRepositoryImp() : _monsterService = getIt<MonsterService>();
  @override
  Future<void> deleteMonster(String id) async {
    _monsterService.deleteMonster(id);
  }

  @override
  Future<List<Monster>> getMonsters() async {
    return await _monsterService.getMonsters();
  }

  @override
  Future<void> insertMonster(Monster monster, String tableName) async {
    _monsterService.insertMonster(monster, tableName);
  }

  @override
  Future<void> updateMonster(Monster monster) async {
    _monsterService.updateMonster(monster);
  }
}
