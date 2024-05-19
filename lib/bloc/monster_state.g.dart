// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monster_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MonsterStateCWProxy {
  MonsterState createStatus(MonsterStatus createStatus);

  MonsterState deleteStatus(MonsterStatus deleteStatus);

  MonsterState getMonstersStatus(MonsterStatus getMonstersStatus);

  MonsterState monsters(List<Monster> monsters);

  MonsterState updateStatus(MonsterStatus updateStatus);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MonsterState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MonsterState(...).copyWith(id: 12, name: "My name")
  /// ````
  MonsterState call({
    MonsterStatus? createStatus,
    MonsterStatus? deleteStatus,
    MonsterStatus? getMonstersStatus,
    List<Monster>? monsters,
    MonsterStatus? updateStatus,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMonsterState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMonsterState.copyWith.fieldName(...)`
class _$MonsterStateCWProxyImpl implements _$MonsterStateCWProxy {
  final MonsterState _value;

  const _$MonsterStateCWProxyImpl(this._value);

  @override
  MonsterState createStatus(MonsterStatus createStatus) =>
      this(createStatus: createStatus);

  @override
  MonsterState deleteStatus(MonsterStatus deleteStatus) =>
      this(deleteStatus: deleteStatus);

  @override
  MonsterState getMonstersStatus(MonsterStatus getMonstersStatus) =>
      this(getMonstersStatus: getMonstersStatus);

  @override
  MonsterState monsters(List<Monster> monsters) => this(monsters: monsters);

  @override
  MonsterState updateStatus(MonsterStatus updateStatus) =>
      this(updateStatus: updateStatus);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MonsterState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MonsterState(...).copyWith(id: 12, name: "My name")
  /// ````
  MonsterState call({
    Object? createStatus = const $CopyWithPlaceholder(),
    Object? deleteStatus = const $CopyWithPlaceholder(),
    Object? getMonstersStatus = const $CopyWithPlaceholder(),
    Object? monsters = const $CopyWithPlaceholder(),
    Object? updateStatus = const $CopyWithPlaceholder(),
  }) {
    return MonsterState(
      createStatus:
          createStatus == const $CopyWithPlaceholder() || createStatus == null
              ? _value.createStatus
              // ignore: cast_nullable_to_non_nullable
              : createStatus as MonsterStatus,
      deleteStatus:
          deleteStatus == const $CopyWithPlaceholder() || deleteStatus == null
              ? _value.deleteStatus
              // ignore: cast_nullable_to_non_nullable
              : deleteStatus as MonsterStatus,
      getMonstersStatus: getMonstersStatus == const $CopyWithPlaceholder() ||
              getMonstersStatus == null
          ? _value.getMonstersStatus
          // ignore: cast_nullable_to_non_nullable
          : getMonstersStatus as MonsterStatus,
      monsters: monsters == const $CopyWithPlaceholder() || monsters == null
          ? _value.monsters
          // ignore: cast_nullable_to_non_nullable
          : monsters as List<Monster>,
      updateStatus:
          updateStatus == const $CopyWithPlaceholder() || updateStatus == null
              ? _value.updateStatus
              // ignore: cast_nullable_to_non_nullable
              : updateStatus as MonsterStatus,
    );
  }
}

extension $MonsterStateCopyWith on MonsterState {
  /// Returns a callable class that can be used as follows: `instanceOfMonsterState.copyWith(...)` or like so:`instanceOfMonsterState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MonsterStateCWProxy get copyWith => _$MonsterStateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MonsterState _$MonsterStateFromJson(Map<String, dynamic> json) => MonsterState(
      monsters: (json['monsters'] as List<dynamic>?)
              ?.map((e) => Monster.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createStatus:
          $enumDecodeNullable(_$MonsterStatusEnumMap, json['createStatus']) ??
              MonsterStatus.init,
      deleteStatus:
          $enumDecodeNullable(_$MonsterStatusEnumMap, json['deleteStatus']) ??
              MonsterStatus.init,
      getMonstersStatus: $enumDecodeNullable(
              _$MonsterStatusEnumMap, json['getMonstersStatus']) ??
          MonsterStatus.init,
      updateStatus:
          $enumDecodeNullable(_$MonsterStatusEnumMap, json['updateStatus']) ??
              MonsterStatus.init,
    );

Map<String, dynamic> _$MonsterStateToJson(MonsterState instance) =>
    <String, dynamic>{
      'monsters': instance.monsters,
      'getMonstersStatus': _$MonsterStatusEnumMap[instance.getMonstersStatus]!,
      'createStatus': _$MonsterStatusEnumMap[instance.createStatus]!,
      'deleteStatus': _$MonsterStatusEnumMap[instance.deleteStatus]!,
      'updateStatus': _$MonsterStatusEnumMap[instance.updateStatus]!,
    };

const _$MonsterStatusEnumMap = {
  MonsterStatus.init: 'init',
  MonsterStatus.start: 'start',
  MonsterStatus.success: 'success',
  MonsterStatus.fail: 'fail',
};
