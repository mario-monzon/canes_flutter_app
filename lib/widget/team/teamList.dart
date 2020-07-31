import 'package:canes_app/model/player_model.dart';
import 'package:canes_app/repository/resource.dart';
import 'package:canes_app/widget/team/team_list_item.dart';
import 'package:flutter/material.dart';

class PlayerList extends StatelessWidget {
  const PlayerList({Key key, @required this.playerList, this.status})
      : super(key: key);

  final List<Player> playerList;
  final Status status;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          padding: const EdgeInsets.all(24),
          itemCount: (playerList.length ?? 0),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => (index >= playerList.length)
              ? Center(
                  child: status == Status.working
                      ? CircularProgressIndicator()
                      : null)
              : PlayerListItem(
                  playerItem: playerList[index],
                )),
    );
  }
}
