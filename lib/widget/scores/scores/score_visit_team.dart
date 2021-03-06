import 'package:canes_app/model/team_model.dart';
import 'package:flutter/material.dart';

class ScoreVisitTeam extends StatelessWidget {
  final Team team;
  final String points;

  const ScoreVisitTeam({Key key, this.team, this.points}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.all(3.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Text(
              points,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Text(team.name),
          SizedBox(
              height: 60,
              width: 60,
              child: Image.asset(
                team.logo,
                fit: BoxFit.cover,
              )),
        ],
      ),
    );
  }
}
