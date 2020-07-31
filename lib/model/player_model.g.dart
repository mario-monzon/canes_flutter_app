// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return Player(
    name: json['name'] as String,
    number: json['number'] as String,
    playerPosition:
        _$enumDecode(_$PlayerPositionEnumMap, json['player_position']),
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'player_position': _$PlayerPositionEnumMap[instance.playerPosition],
      'description': instance.description,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

const _$PlayerPositionEnumMap = {
  PlayerPosition.QB: 'QB',
  PlayerPosition.RB: 'RB',
  PlayerPosition.WR: 'WR',
  PlayerPosition.OL: 'OL',
  PlayerPosition.TE: 'TE',
  PlayerPosition.DL: 'DL',
  PlayerPosition.CB: 'CB',
  PlayerPosition.S: 'S',
  PlayerPosition.LB: 'LB',
  PlayerPosition.HC: 'HC',
};
