import 'package:json_annotation/json_annotation.dart';
part 'monster.g.dart';

@JsonSerializable()
class Monster {
  final String id;
  final String name;
  final String power;
  Monster({this.id = '', this.name = '', this.power = ''});
  factory Monster.fromJson(Map<String, dynamic> json) =>
      _$MonsterFromJson(json);
  Map<String, dynamic> toJson() => _$MonsterToJson(this);
}
