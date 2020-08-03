import 'package:canes_app/design/img.dart';
import 'package:canes_app/model/match_model.dart';
import 'package:canes_app/model/team_model.dart';
import 'package:canes_app/repository/resource.dart';
import 'package:canes_app/widget/scores/scores/scoreList.dart';
import 'package:flutter/material.dart';

class ScoreListWidget extends StatefulWidget {
  // ignore: public_member_api_docs
  const ScoreListWidget({
    Key key,
  }) : super(key: key);

  @override
  _ScoreListState createState() => _ScoreListState();
}

class _ScoreListState extends State<ScoreListWidget> {
  List<MatchScore> matchScoreList;

  @override
  void initState() {
    matchScoreList = List();

    Team _localTeam = Team(name: 'Canes', logo: Img.canes);
    Team _visitTeam = Team(name: 'Canes', logo: Img.canes);

    MatchScore _matchScore = MatchScore(
        localTeam: _localTeam,
        localPoints: '35',
        visitTeam: _visitTeam,
        visitPoints: '25',
        date: '15-05-2020');

    for (int i = 0; i < 20; i++) {
      matchScoreList.add(_matchScore);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScoreList(
          scoreList: matchScoreList != null ? matchScoreList : [],
          status: Status.loaded,
        )
      ],
    );
  }
}
