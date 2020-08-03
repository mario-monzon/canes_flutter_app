import 'package:json_annotation/json_annotation.dart';

part 'team_model.g.dart';

@JsonSerializable(nullable: false, explicitToJson: true)
class Team extends Comparable<Team> {
  // ignore: public_member_api_docs
  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  // ignore: public_member_api_docs
  Map<String, dynamic> toJson() => _$TeamToJson(this);

  Team(
      {this.city,
      this.name,
      this.logo,
      this.tieGames,
      this.winGames,
      this.loseGames,
      this.pointsAgainst,
      this.pointsFor});

  @JsonKey(name: 'city', nullable: false)
  String city;

  @JsonKey(name: 'name', nullable: false)
  String name;

  @JsonKey(name: 'url_logo', nullable: false)
  String logo;

  @JsonKey(name: 'win_games', nullable: false)
  int winGames;

  @JsonKey(name: 'lose_games', nullable: false)
  int loseGames;

  @JsonKey(name: 'tie_games', nullable: false)
  int tieGames;

  /// number of points scored by the franchise, throughout the season
  @JsonKey(name: 'points_for', nullable: false)
  int pointsFor;

  /// number of points scored against the franchise, throughout the season
  @JsonKey(name: 'points_against', nullable: false)
  int pointsAgainst;

  @override
  int compareTo(Team other) {
    if (winGames > other.winGames) {
      return -1;
    } else if (winGames < other.winGames) {
      return 1;
    } else if (loseGames < other.loseGames) {
      return -1;
    } else if (loseGames > other.loseGames) {
      return 1;
    } else if (tieGames > other.tieGames) {
      return -1;
    } else if (tieGames < other.tieGames) {
      return 1;
    } else if ((pointsFor - pointsAgainst) >
        (other.pointsFor - other.pointsAgainst)) {
      return -1;
    } else if ((pointsFor - pointsAgainst) <
        (other.pointsFor - other.pointsAgainst)) {
      return 1;
    }

    return 0;
  }
}
