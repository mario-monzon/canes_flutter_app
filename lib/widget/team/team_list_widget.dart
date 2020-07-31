import 'package:canes_app/model/player_model.dart';
import 'package:canes_app/repository/resource.dart';
import 'package:canes_app/widget/team/teamList.dart';
import 'package:flutter/material.dart';

class TeamListWidget extends StatefulWidget {
  // ignore: public_member_api_docs
  const TeamListWidget({
    Key key,
  }) : super(key: key);

  @override
  _TeamListState createState() => _TeamListState();
}

class _TeamListState extends State<TeamListWidget> {
  List<Player> playerList;

  @override
  void initState() {
    playerList = List();

    for (int i = 0; i < 20; i++) {
      playerList.add(Player(
          name: "Jugador",
          number: "$i",
          playerPosition: PlayerPosition.QB,
          description:
              "et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad"));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PlayerList(
          playerList: playerList != null ? playerList : [],
          status: Status.loaded,
        )
      ],
    );
  }
}
