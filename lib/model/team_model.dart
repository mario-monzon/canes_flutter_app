import 'package:json_annotation/json_annotation.dart';

part 'team_model.g.dart';

@JsonSerializable(nullable: false, explicitToJson: true)
class Team {
  // ignore: public_member_api_docs
  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  // ignore: public_member_api_docs
  Map<String, dynamic> toJson() => _$TeamToJson(this);

  Team({
    this.name,
    this.logo,
  });

  @JsonKey(name: 'name', nullable: false)
  String name;

  @JsonKey(name: 'url_logo', nullable: false)
  String logo;
}
