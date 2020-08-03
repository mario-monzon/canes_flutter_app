import 'package:canes_app/model/team_model.dart';
import 'package:canes_app/repository/resource.dart';
import 'package:canes_app/widget/scores/standings/standings_list_item.dart';
import 'package:flutter/material.dart';

class StandingList extends StatelessWidget {
  const StandingList({Key key, @required this.teamList, this.status})
      : super(key: key);

  final List<Team> teamList;
  final Status status;

  @override
  Widget build(BuildContext context) {
    List<Team> _sortList = sortList();
    return Container(
      child: ListView.builder(
          padding: const EdgeInsets.all(24),
          itemCount: (_sortList.length ?? 0),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => (index >= _sortList.length)
              ? Center(
                  child: status == Status.working
                      ? CircularProgressIndicator()
                      : null)
              : StandingListItem(
                  team: _sortList[index],
                )),
    );
  }

  List<Team> sortList() {
    return teamList..sort((team1, team2) => team1.compareTo(team2));
  }
}
