import 'package:canes_app/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactDatasWidget extends StatelessWidget {
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
            Text(S.of(context).contact),
            Text(
              S.of(context).email,
              style: TextStyle(fontFamily: "Canes_font_body"),
            ),
            Text(S.of(context).phone,
                style: TextStyle(fontFamily: "Canes_font_body")),
          ],
        ),
      ),
    );
  }
}
