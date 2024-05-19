import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sqflite_project/data/model/monster.dart';
part 'monster_state.g.dart';

enum MonsterStatus { init, start, success, fail }

@JsonSerializable()
@CopyWith()
class MonsterState extends Equatable {
  final List<Monster> monsters;
  final MonsterStatus getMonstersStatus;
  final MonsterStatus createStatus;
  final MonsterStatus deleteStatus;
  final MonsterStatus updateStatus;
  const MonsterState(
      {this.monsters = const [],
      this.createStatus = MonsterStatus.init,
      this.deleteStatus = MonsterStatus.init,
      this.getMonstersStatus = MonsterStatus.init,
      this.updateStatus = MonsterStatus.init});
  @override
  List<Object?> get props =>
      [monsters, getMonstersStatus, createStatus, deleteStatus, updateStatus];
}
