import 'package:canes_app/design/img.dart';
import 'package:canes_app/model/team_model.dart';
import 'package:canes_app/repository/resource.dart';
import 'package:canes_app/widget/scores/standings/standingListCoordinate.dart';
import 'package:flutter/material.dart';

class StandingListWidget extends StatefulWidget {
  // ignore: public_member_api_docs
  const StandingListWidget({
    Key key,
  }) : super(key: key);

  @override
  _StandingListState createState() => _StandingListState();
}

class _StandingListState extends State<StandingListWidget> {
  List<Team> teamList;

  @override
  void initState() {
    teamList = List();

    Team _team1 = Team(
        city: 'Telde',
        name: 'Canes-1',
        logo: Img.canes,
        winGames: 5,
        loseGames: 2,
        tieGames: 3,
        pointsAgainst: 100,
        pointsFor: 250);

    Team _team2 = Team(
        city: 'Telde',
        name: 'Canes-2',
        logo: Img.canes,
        winGames: 3,
        loseGames: 4,
        tieGames: 3,
        pointsAgainst: 300,
        pointsFor: 120);

    Team _team3 = Team(
        city: 'Telde',
        name: 'Canes-3',
        logo: Img.canes,
        winGames: 3,
        loseGames: 5,
        tieGames: 3,
        pointsAgainst: 350,
        pointsFor: 200);

    Team _team4 = Team(
        city: 'Telde',
        name: 'Canes-4',
        logo: Img.canes,
        winGames: 2,
        loseGames: 6,
        tieGames: 3,
        pointsAgainst: 250,
        pointsFor: 100);

    teamList.addAll([_team2, _team4, _team1, _team3]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        StandingList(
          teamList: teamList != null ? teamList : [],
          status: Status.loaded,
        )
      ],
    );
  }
}
