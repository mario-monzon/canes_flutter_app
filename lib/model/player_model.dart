import 'package:json_annotation/json_annotation.dart';

part 'player_model.g.dart';

@JsonSerializable(nullable: false, explicitToJson: true)
class Player {
  // ignore: public_member_api_docs
  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  // ignore: public_member_api_docs
  Map<String, dynamic> toJson() => _$PlayerToJson(this);

  Player({
    this.name,
    this.number,
    this.playerPosition,
    this.description,
  });

  @JsonKey(name: 'name', nullable: false)
  String name;

  @JsonKey(name: 'number', nullable: false)
  String number;

  @JsonKey(name: 'player_position', nullable: false)
  PlayerPosition playerPosition;

  @JsonKey(name: 'description', nullable: false)
  String description;
}

enum PlayerPosition { QB, RB, WR, OL, TE, DL, CB, S, LB, HC }
