import 'package:canes_app/design/img.dart';
import 'package:canes_app/model/player_model.dart';
import 'package:flutter/material.dart';

class PlayerListItem extends StatelessWidget {
  final Player playerItem;

  const PlayerListItem({Key key, this.playerItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        shadowColor: Colors.black,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset(
                    Img.canes,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'QB ${playerItem.name} ${playerItem.number}',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Canes_font_body',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${playerItem.description}',
                      style: TextStyle(
                        fontFamily: 'Canes_font_body',
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
