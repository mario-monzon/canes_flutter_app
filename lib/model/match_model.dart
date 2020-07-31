import 'package:canes_app/model/team_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'match_model.g.dart';

@JsonSerializable(nullable: false, explicitToJson: true)
class MatchScore {
  // ignore: public_member_api_docs
  factory MatchScore.fromJson(Map<String, dynamic> json) =>
      _$MatchScoreFromJson(json);

  // ignore: public_member_api_docs
  Map<String, dynamic> toJson() => _$MatchScoreToJson(this);

  MatchScore(
      {this.localTeam,
      this.visitTeam,
      this.localPoints,
      this.visitPoints,
      this.date});

  @JsonKey(name: 'local_team', nullable: false)
  Team localTeam;

  @JsonKey(name: 'visit_team', nullable: false)
  Team visitTeam;

  @JsonKey(name: 'local_points', nullable: false)
  String localPoints;

  @JsonKey(name: 'visit_points', nullable: false)
  String visitPoints;

  @JsonKey(name: 'date', nullable: false)
  String date;
}
