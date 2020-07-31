import 'package:canes_app/model/match_model.dart';
import 'package:canes_app/repository/resource.dart';
import 'package:canes_app/widget/scores/score_detail.dart';
import 'package:flutter/material.dart';

class ScoreList extends StatelessWidget {
  const ScoreList({Key key, @required this.scoreList, this.status})
      : super(key: key);

  final List<MatchScore> scoreList;
  final Status status;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          padding: const EdgeInsets.all(24),
          itemCount: (scoreList.length ?? 0),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => (index >= scoreList.length)
              ? Center(
                  child: status == Status.working
                      ? CircularProgressIndicator()
                      : null)
              : ScoreDetails(
                  match: scoreList[index],
                )),
    );
  }
}
