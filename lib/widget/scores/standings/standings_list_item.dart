import 'package:canes_app/design/theme.dart';
import 'package:canes_app/generated/l10n.dart';
import 'package:canes_app/model/team_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StandingListItem extends StatelessWidget {
  final Team team;

  const StandingListItem({Key key, this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.black,
      child: Container(
        child: Row(
          children: [
            Image.asset(
              team.logo,
              width: 50,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(team.city, style: AppTheme.mainTextTheme.overline),
                  Text(
                    team.name,
                    style: AppTheme.mainTextTheme.bodyText2,
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('W-L-T', style: AppTheme.mainTextTheme.overline),
                        Text(
                          '${team.winGames}-${team.loseGames}-${team.tieGames}',
                          style: AppTheme.mainTextTheme.bodyText2,
                        ),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(S.of(context).pf,
                            style: AppTheme.mainTextTheme.overline),
                        Text(
                          '${team.pointsFor}',
                          style: AppTheme.mainTextTheme.bodyText2,
                        )
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(S.of(context).pa,
                            style: AppTheme.mainTextTheme.overline),
                        Text(
                          '${team.pointsAgainst}',
                          style: AppTheme.mainTextTheme.bodyText2,
                        )
                      ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
