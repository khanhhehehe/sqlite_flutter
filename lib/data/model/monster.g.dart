// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Monster _$MonsterFromJson(Map<String, dynamic> json) => Monster(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      power: json['power'] as String? ?? '',
    );

Map<String, dynamic> _$MonsterToJson(Monster instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'power': instance.power,
    };
