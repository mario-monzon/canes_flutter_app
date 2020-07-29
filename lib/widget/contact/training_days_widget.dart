import 'package:canes_app/generated/l10n.dart';
import 'package:canes_app/widget/contact/stadium_contact_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrainingDaysWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.grey,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(S.of(context).training_days),
            Text(
              S.of(context).schedule_days,
              style: TextStyle(fontFamily: "Canes_font_body"),
            ),
            Text(S.of(context).schedule_hours,
                style: TextStyle(fontFamily: "Canes_font_body")),
            StadiumContactWidget()
          ],
        ),
      ),
    );
  }
}
