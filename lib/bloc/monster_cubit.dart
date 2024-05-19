import 'package:injectable/injectable.dart';
import 'package:sqflite_project/bloc/monster_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite_project/common/configs/locators.dart';
import 'package:sqflite_project/data/model/monster.dart';
import 'package:sqflite_project/data/repositories/monster.repository.implement.dart';

@lazySingleton
class MonsterCubit extends Cubit<MonsterState> {
  final MonsterRepositoryImp _monsterRepositoryImp;
  // MonsterCubit(this._monsterRepositoryImp) : super(const MonsterState());
  MonsterCubit()
      : _monsterRepositoryImp = getIt<MonsterRepositoryImp>(),
        super(const MonsterState());
  Future<void> insertMonster(
      {required Monster monster, required String tableName}) async {
    emit(state.copyWith(createStatus: MonsterStatus.start));
    try {
      await _monsterRepositoryImp.insertMonster(monster, tableName);
      emit(state.copyWith(createStatus: MonsterStatus.success));
    } catch (ex) {
      emit(state.copyWith(createStatus: MonsterStatus.fail));
    }
  }

  Future<void> getMonsters() async {
    emit(state.copyWith(getMonstersStatus: MonsterStatus.start));
    try {
      List<Monster> monsters = await _monsterRepositoryImp.getMonsters();
      emit(state.copyWith(
          monsters: monsters, getMonstersStatus: MonsterStatus.success));
    } catch (ex) {
      emit(state.copyWith(getMonstersStatus: MonsterStatus.fail));
    }
  }

  Future<void> deleteMonster({required String id}) async {
    emit(state.copyWith(deleteStatus: MonsterStatus.start));
    try {
      await _monsterRepositoryImp.deleteMonster(id);
      emit(state.copyWith(deleteStatus: MonsterStatus.success));
    } catch (ex) {
      emit(state.copyWith(deleteStatus: MonsterStatus.fail));
    }
  }

  Future<void> updateMonster({required Monster monster}) async {
    emit(state.copyWith(updateStatus: MonsterStatus.start));
    try {
      await _monsterRepositoryImp.updateMonster(monster);
      emit(state.copyWith(updateStatus: MonsterStatus.success));
    } catch (ex) {
      emit(state.copyWith(updateStatus: MonsterStatus.fail));
    }
  }
}
