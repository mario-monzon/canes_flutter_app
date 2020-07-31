// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchScore _$MatchScoreFromJson(Map<String, dynamic> json) {
  return MatchScore(
    localTeam: Team.fromJson(json['local_team'] as Map<String, dynamic>),
    visitTeam: Team.fromJson(json['visit_team'] as Map<String, dynamic>),
    localPoints: json['local_points'] as String,
    visitPoints: json['visit_points'] as String,
    date: json['date'] as String,
  );
}

Map<String, dynamic> _$MatchScoreToJson(MatchScore instance) =>
    <String, dynamic>{
      'local_team': instance.localTeam.toJson(),
      'visit_team': instance.visitTeam.toJson(),
      'local_points': instance.localPoints,
      'visit_points': instance.visitPoints,
      'date': instance.date,
    };
