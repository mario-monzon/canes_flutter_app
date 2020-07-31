import 'package:canes_app/model/match_model.dart';
import 'package:canes_app/widget/scores/score_local_team.dart';
import 'package:canes_app/widget/scores/score_visit_team.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScoreDetails extends StatelessWidget {
  final MatchScore match;

  const ScoreDetails({Key key, this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.black,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              match.date,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              ScoreLocalTeam(
                team: match.localTeam,
                points: match.localPoints,
              ),
              ScoreVisitTeam(
                team: match.visitTeam,
                points: match.visitPoints,
              )
            ],
          ),
        ],
      ),
    );
  }
}
